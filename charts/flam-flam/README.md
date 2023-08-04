# Flam-flam Helm chart

Umbrella helm chart for flam-flam services: dispatcher, comment and mongodb.

See `values.yaml` for config reference.

## Extra manifests

This chart requires extra manifests to exist in the cluster.
These can be created separately or included in the `extraManifests` section of `values.yaml`.

### Reddit secret

Used by the dispatcher service.

```yaml
apiVersion: v1
kind: Secret
metadata:
  name: reddit-auth
type: Opaque
data:
  REDDIT_CLIENT_ID: <echo -n "VALUE" | base64>
  REDDIT_CLIENT_SECRET: <echo -n "VALUE" | base64>
```

### MongoDB persistent volume claim

```yaml
apiVersion: v1
kind: PersistentVolumeClaim
metadata:
name: mongodb-data
spec:
storageClassName: standard
accessModes:
    - ReadWriteOnce
resources:
    requests:
    storage: 1Gi
```
