# Flam-Flam helm charts

## Usage

[Helm](https://helm.sh) must be installed to use the charts.
Please refer to Helm's [documentation](https://helm.sh/docs/) to get started.

Once Helm is set up properly, add the repo as follows:

```console
helm repo add flam-flam https://flam-flam.github.io/helm-charts
```

If you had already added this repo earlier, run `helm repo update flam-flam` to retrieve the latest versions of the packages.

You can then run `helm search repo flam-flam` to see the charts.


## Charts

_none yet_


## Docker compose

### Pre-requisites
docker version `>=23.0.0`

#### Steps:
1. Create new or obtain existing Reddit credentials (required by the [dispatcher](https://github.com/flam-flam/dispatcher-service))
2. Create a `.env` file:
    ```env
    REDDIT_CLIENT_ID=<value>
    REDDIT_CLIENT_SECRET=<value>
    DISPATCHER_BRANCH=main
    SUBMISSION_BRANCH=main
    ```

3. Run the services in docker:
    ```bash
    make up
    ```
