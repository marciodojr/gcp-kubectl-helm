FROM google/cloud-sdk:392.0.0-alpine

ARG HELM_VERSION=3.9.0

ENV HELM_PACKAGE="helm-v$HELM_VERSION-linux-amd64.tar.gz"

RUN gcloud components install kubectl \
    && gcloud components install beta \
    && curl -O "https://get.helm.sh/$HELM_PACKAGE" \
    && tar xvzf $HELM_PACKAGE && mv linux-amd64/helm /usr/local/bin \
    && rm $HELM_PACKAGE linux-amd64 -rf