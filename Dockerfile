FROM google/cloud-sdk:alpine

ARG HELM_VERSION=2.16.6

RUN gcloud components install kubectl \
    && gcloud components install beta \
    && curl "https://storage.googleapis.com/kubernetes-helm/helm-v${HELM_VERSION}-linux-amd64.tar.gz" \
    | tar xvz && mv linux-amd64/helm /usr/local/bin \
    && rm linux-amd64 -rf