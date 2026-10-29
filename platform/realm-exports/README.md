# Realm exports

What the live Keycloak realms actually contain, as a file. Nothing here is applied: the
`realm-settings` PostSync hook has been out of the sync path since 2026-10-24 (it starts a JVM per
`kcadm` call and could not finish on this node), so a realm is configured by hand today and nothing
replays it. Until this directory existed, the only export in the repository described `wely-local`,
and the `wely-dev` realm — the one every environment actually authenticates against — was described
nowhere. If Keycloak had restarted on an empty database, it would have been rebuilt from memory.

It nearly happened: on 2026-10-29 the move of the datastores to the SSD node provisioned an empty
volume for Keycloak's PostgreSQL, and the realm existed for twenty minutes only inside a `pg_dump`
on a laptop.

## Refreshing an export

Online, no downtime, no file written inside the pod:

```sh
kubectl -n wely-platform exec <keycloak-pod> -- sh -c '
  K=/opt/keycloak/bin/kcadm.sh
  $K config credentials --server http://localhost:8080 --realm master \
    --user "$KC_BOOTSTRAP_ADMIN_USERNAME" --password "$KC_BOOTSTRAP_ADMIN_PASSWORD" >/dev/null
  $K create "realms/<realm>/partial-export?exportClients=true&exportGroupsAndRoles=true" -o
' | python3 -m json.tool > platform/realm-exports/<realm>.json
```

Then delete `~/.keycloak/kcadm.config` in the pod — `config credentials` leaves an admin token there.

The image carries no curl, wget or python, so `kcadm.sh` is the only client available; it is not on
`PATH`, hence the absolute path. Indenting the JSON is what makes a re-export a reviewable diff
rather than one changed line of 86 KB.

## What a partial export does and does not carry

- **Carries:** the realm's own settings, its clients, client scopes, protocol mappers,
  authentication flows, roles and groups. That includes the two mappers that exist nowhere else —
  `user-business-id-mapper` and `audience-mapper` on the `business-scope` scope — which are what
  put `businessId` and `aud` in every token.
- **Does not carry:** real users, and client secrets, which come out as `**********`. The secrets
  live in SealedSecrets and the users in Keycloak's database; an export is a description of the
  configuration, not a backup. Restoring a realm from this file means re-creating the client
  secrets to match the ones the services already hold.
- **Verified before committing:** no private key, no certificate, no password, no SMTP
  credentials, and the single user is the `wely-users-dev-client` service account.

## Not a database backup

Keycloak's own database still has none. If it is lost, this file rebuilds the realm's shape but not
its users, their credentials or their sessions.
