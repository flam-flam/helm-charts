# MongoDB Helm chart

Helm chart for MongoDB that is used as a backend of comment and submissions services.

See `values.yaml` for config reference.

## Persistent volume

This chart requires a Persistent Volume Claim to be created separately:

```yaml
apiVersion: v1
kind: PersistentVolumeClaim
metadata:
  name: mongodb-data
spec:
  storageClassName: standard # "standard" is for KIND
  accessModes:
    - ReadWriteOnce
  resources:
    requests:
      storage: 1Gi
```

## Secrets

The chart generates secrets for the root account as well as a service account.
These are not changed when the chart is redeployed.
