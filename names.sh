#!/usr/bin/env bash

declare current
current="$(git rev-parse --abbrev-ref HEAD)"

if [[ -z "${current}" || "${current}" == "HEAD" ]]; then
    current="$(git rev-parse HEAD)"
fi

echo "${current}" > name.txt
