#!/usr/bin/env bash

set -eu

docker run --rm -it --network host -v ${PWD}:/workdir mxzoo2onnx:1 /bin/bash
