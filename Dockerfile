FROM python:3.10-bookworm

ADD wheel wheel

RUN apt-get update
RUN apt-get install -y libopenblas-dev

RUN pip3 install wheel/$(uname -m)/numpy*.whl
RUN pip3 install wheel/$(uname -m)/onnxruntime*.whl
