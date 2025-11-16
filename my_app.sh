#!/usr/bin/env bash

cd /opt
git clone https://github.com/cranberry511/05-virt-04-docker-in-practice-shvirtd-example-python.git
cd 05-virt-04-docker-in-practice-shvirtd-example-python
docker build -t cr.yandex/crprjpklgro088gr9n08/my_python:1.0.0 -f Dockerfile.python .
docker compose up -d
