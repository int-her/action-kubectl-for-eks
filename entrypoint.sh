#!/bin/bash

aws eks update-kubeconfig --name "$CLUSTER_NAME" --region "$AWS_REGION" --kubeconfig eksconfig

kubectl --kubeconfig eksconfig "$@"
