# mxzoo2onnx

A sample Jupyter notebook to explain how to export MXNet pretrained model to ONNX format.

# Target platform

- linux/amd64 (GPU not needed)

# Prerequisites

- Docker
  - Configure Docker can be run by non-root user. Please refer [this article](https://docs.docker.com/engine/install/linux-postinstall/#manage-docker-as-a-non-root-user).

# Installation

1. Clone this repository.

  `git clone https://github.com/MACNICA-CLAVIS-NV/mxzoo2onnx`

1. Build the Docker cotainer image contains the required softwares for this Jupyter notebook.

  `./docker_build.sh`

# Usage

1. Run a container from the build image.

  `./docker_run.sh`

1. Launch Jupyter Lab with the instruction displyed at the above step.

1. Open the mxnet_model_zoo_to_onnx.ipynb notebook from the /mxzoo2onnx path in the Jupyter file browser.

