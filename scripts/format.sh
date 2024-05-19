#!/bin/bash

find ./ports -name "*.json" -exec vcpkg format-manifest {} \;

vcpkg --x-builtin-ports-root=./ports --x-builtin-registry-versions-dir=./versions x-add-version --all --verbose