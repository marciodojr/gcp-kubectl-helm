
### Image for gitlab-ci with:

- gcp
- kubectl
- helm

### How to use

```sh
docker run --rm -it \
    -e GCP_PROJECT_ID="your-project-id" \
    -e GCP_COMPUTE_ZONE="your-zone" \
    -e GCP_CLUSTER="your-cluster" \
    -e GOOGLE_CONTAINER_REGISTRY_SERVICE_KEY="service-account-content-key" \
    marciodojr/gcp-kubectl-helm bash


echo ${GOOGLE_CONTAINER_REGISTRY_SERVICE_KEY} > /tmp/gcp-key.json
gcloud config set project ${GCP_PROJECT_ID}
gcloud config set compute/zone ${GCP_COMPUTE_ZONE}
gcloud auth activate-service-account --key-file=/tmp/gcp-key.json
gcloud container clusters get-credentials ${GCP_CLUSTER}
helm init --client-only
# other helm commands. ex: helm ls
```

### How to build

docker build -t gcp-kubectl-helm