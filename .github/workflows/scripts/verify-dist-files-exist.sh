#!/bin/bash

# Copyright The OpenTelemetry Authors
# SPDX-License-Identifier: Apache-2.0

files=(
    bin/otelcontribcol_linux_amd64
    dist/otel-contrib-collector_*_amd64.deb
    dist/otel-contrib-collector-*.x86_64.rpm
);
for f in "${files[@]}"
do
    if [[ ! -f $f ]]
    then
        echo "$f does not exist."
        echo "passed=false" >> $GITHUB_OUTPUT
        exit 1
    fi
done
echo "passed=true" >> $GITHUB_OUTPUT
