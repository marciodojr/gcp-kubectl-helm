FROM google/cloud-sdk:alpine

ARG HELM_VERSION=3.5.3

RUN gcloud components install kubectl \
    && gcloud components install beta \
    && curl -O "https://get.helm.sh/helm-v$HELM_VERSION-linux-amd64.tar.gz" \
    | tar xvz && mv linux-amd64/helm /usr/local/bin \
    && rm linux-amd64 -rf