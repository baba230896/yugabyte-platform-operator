# Build the manager binary
FROM quay.io/operator-framework/helm-operator:v1.3.0

ENV HOME=/opt/helm

LABEL name="Yugabyte Platform Operator" \
      maintainer="dev-admin-cloud@yugabyte.com" \
      vendor="Yugabyte Inc" \
      release="1" \
      version="2.5.1.0" \
      summary="Container image for Yugabyte Platform operator" \
      description="Operator for Yugabyte Platform makes it easy to deploy and upgrade Yugabyte platform on kubernetes environment"

COPY watches.yaml ${HOME}/watches.yaml
COPY helm-charts  ${HOME}/helm-charts
WORKDIR ${HOME}

COPY licenses /licenses