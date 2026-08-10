# Guide de Développement Local (Mac)

Ce guide permet de faire tourner **toute l'infrastructure Wely en local sur ton Mac** en 1 seule commande, sans dépendre du cluster Raspberry Pi ni de Sealed Secrets.

---

### Prérequis

1. **Un Kubernetes local sur Mac** :
   - [OrbStack](https://orbstack.dev/) *(Recommandé - très rapide)* OU Docker Desktop avec Kubernetes activé OU Minikube OU K3d.
2. **`kubectl`** (installé via Homebrew : `brew install kubectl`).

---

### Lancement en 1 Clic 🚀

Dans le terminal de ton Mac, à la racine du projet `wely-gitops-infra` :

```bash
kubectl apply -k overlays/local
```

> **Ce qui se passe en arrière-plan** :
> - Création du namespace `wely-local`.
> - Déploiement des bases de données (PostgreSQL Auth & Users, MongoDB, Neo4j) avec leurs secrets locaux pré-configurés.
> - Déploiement de Keycloak (`wely-auth`), de la Gateway (`wely-gateway`), du Frontend (`wely-web`) et des microservices (`users`, `social`, `chat`, `events`).
> - Exposition automatique des ports sur `localhost`.

---

### Accès aux Services en Local 🌐

Grâce au type `LoadBalancer` géré par OrbStack / Docker Desktop, les services sont accessibles directement sur ton navigateur :

* 🎨 **Frontend Web** : [http://localhost](http://localhost) (ou `http://localhost:80`)
* 🔑 **Keycloak (Auth)** : [http://localhost:8080](http://localhost:8080) *(Admin : `admin` / `admin`)*
* 🚪 **API Gateway** : [http://localhost:8081](http://localhost:8081)

---

### Arrêter / Supprimer l'environnement local

Pour tout nettoyer proprement :

```bash
kubectl delete -k overlays/local
```
