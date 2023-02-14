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

### `example`

Example helm chart, only used as an illustration and for testing the CI pipeline.


## Docker compose

Set Reddit credentials in a `.env` file (required by the [dispatcher](https://github.com/flam-flam/dispatcher-service)):

```env
REDDIT_CLIENT_ID=<value>
REDDIT_CLIENT_SECRET=<value>
```

Run the services in docker:

```bash
set -a; source .env && docker-compose up
```
