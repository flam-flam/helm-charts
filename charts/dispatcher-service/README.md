# Dispatcher service Helm chart

Helm chart for [flam-flam/dispatcher-service](https://github.com/flam-flam/dispatcher-service).

See `values.yaml` for config reference.

## Secret

Helm values references a secret file that needs to be created manually:

```yaml
apiVersion: v1
kind: Secret
metadata:
  name: dispatcher-service-secrets
type: Opaque
data:
  REDDIT_CLIENT_ID: <echo -n "VALUE" | base64>
  REDDIT_CLIENT_SECRET: <echo -n "VALUE" | base64>
```

## Config

The contents of the `config` section of the values file is mapped directly into
the dispatcher's `config.json`.
