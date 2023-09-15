# Submission service Helm chart

Helm chart for [flam-flam/submission-service](https://github.com/flam-flam/submission-service).

See `values.yaml` for config reference.

## Mongo DB connection

### Endpoint

The endpoint is set in `mongo.server` value of `values.yaml`.

### Secret

MongoDB secrets are read from `mongo.secret` value of `values.yaml`.
It is read from the secret with the `name` and keys set in `username` and `password`, where the respective values are set.

>NOTE: this is created within the [mongodb helm chart](../charts/mongodb)
