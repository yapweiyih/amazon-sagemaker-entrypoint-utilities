#!/usr/bin/env bash

# This script must be executed from the same directory as the train.py.

declare -a ARGS=(
    --model-dir /tmp/kmeans/model
    --output-data-dir /tmp/kmeans/output/data/algo-1
    --train refdata
    --algo sklearn.cluster.KMeans
    --sweep 1
    --sweep-start 2
    --sweep-end 4
)

python train.py "${ARGS[@]}"
