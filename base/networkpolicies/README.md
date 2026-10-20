# NetworkPolicies

Deny-by-default ingress on every pod: one `NetworkPolicy` per target, one file
per policy. Each policy names the ONLY pods allowed to reach its target, by
their `app` label; anything else is dropped.

```
networkpolicies/
├── datastores/   crown jewels — PII, private messages, media bytes
└── services/     the service-to-service graph
```

## Why

The cluster network is flat. Without these, ANY pod (e.g. a compromised `web`
nginx) can open a TCP socket straight to Postgres/Mongo/Neo4j and read the data,
bypassing the gateway, the JWT and every application check — a database speaks to
whoever connects, not to a JWT. The service policies extend the same rule to the
application pods, so a compromised pod can no longer reach a service it has no
business calling (e.g. `web` straight to `events`, bypassing the gateway).

Traffic flows: browser → cloudflared → web (nginx, reverse proxy) → gateway → backends.

## Things to know

- **Prometheus** (`observability/prometheus`, dev only) is admitted on each
  scraped service's main port, where `/actuator/prometheus` is served. Its own
  pod admits no ingress (`allow-prometheus` in that directory).
- **k3s enforces NetworkPolicy** via its embedded kube-router controller, so
  these are applied, not decorative.
- **Kubelet health probes are NOT affected**: verified that k3s/kube-router lets
  them through a deny-all policy, so no CrashLoop risk.
- **Jobs that touch a datastore** (demo-reset, garage-setup, backup,
  kafka-topics, realm-settings) get a stable `app` label in their own manifests
  so they can be named here; without that, the nightly reset and backups break.
- **cloudflared's hostname→service mapping** lives in the Cloudflare dashboard
  (token tunnel), not in this repo. The `cloudflared` sources (web, auth, media
  public reads) are inferred from the code (nginx.conf proxies /api and /rsocket
  to the gateway; MEDIA_PUBLIC_ENDPOINT exists; Keycloak login). If a public
  hostname is routed differently, adjust the matching policy.
