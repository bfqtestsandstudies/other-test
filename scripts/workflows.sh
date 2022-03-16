#!/bin/bash

GO_VERSION=1.17
SDK_COVERAGE=90.0
MICROSERVICE_COVERAGE=90.0

SDK_TEMPLATE=$(cat ../.github/sdk_template.yaml)

sdks=("sdk1")

for SDK in ${sdks[@]}; do
    echo "generating workflow for sdk/${SDK}"

    WORKFLOW=$(echo "${SDK_TEMPLATE}" |
    sed "s/{{SDK}}/${SDK}/g" |
    sed "s/{{GO_VERSION}}/${GO_VERSION}/g" |
    sed "s/{{MINIMUM_COVERAGE}}/${SDK_COVERAGE}/g")

    echo "${WORKFLOW}" > ../.github/workflows/ci-sdk-${SDK}.yaml
done

# ---

MICROSERVICE_TEMPLATE=$(cat ../.github/microservices_template.yaml)

microservices=("microservice1")

for MICROSERVICE in ${microservices[@]}; do
    echo "generating workflow for microservices/${MICROSERVICE}"

    WORKFLOW=$(echo "${MICROSERVICE_TEMPLATE}" |
    sed "s/{{MICROSERVICE}}/${MICROSERVICE}/g" |
    sed "s/{{GO_VERSION}}/${GO_VERSION}/g" |
    sed "s/{{MINIMUM_COVERAGE}}/${MICROSERVICE_COVERAGE}/g")

    echo "${WORKFLOW}" > ../.github/workflows/ci-microservice-${MICROSERVICE}.yaml
done
