FROM ubuntu

ARG REPOSITORY_NAME=mxzoo2onnx
ARG REPOSITORY_DIR="/${REPOSITORY_NAME}"

ENV DEBIAN_FRONTEND=noninteractive
ENV LANG C.UTF-8

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        build-essential \
        cmake \
        protobuf-compiler \
        libprotoc-dev \
        graphviz \
        python3-dev \
        python3-pip && \
    rm -rf /var/lib/apt/lists/*

RUN pip3 install --upgrade Pillow matplotlib && \ 
    pip3 install --upgrade pybind11[global] numpy protobuf==3.16.0 && \
    pip3 install --upgrade onnx && \
    pip3 install --upgrade onnxruntime && \
    pip3 install --upgrade mxnet && \
    pip3 install jupyterlab pydot

WORKDIR /
RUN mkdir -p ${REPOSITORY_DIR}
COPY ./*.ipynb ${REPOSITORY_DIR}/
WORKDIR ${REPOSITORY_DIR}

ENTRYPOINT ["jupyter", "lab", "--ip", "0.0.0.0", "--port", "8888", "--allow-root", "--notebook-dir=/"]
