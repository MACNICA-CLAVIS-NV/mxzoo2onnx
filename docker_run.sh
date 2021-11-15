#!/usr/bin/env bash

set -eu

docker run --rm -it --network host -v ${HOME}:${HOME} mxzoo2onnx:1 /bin/bash
