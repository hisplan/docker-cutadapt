#!/bin/bash

docker login
docker tag cutadapt hisplan/cutadapt:2.5
docker push hisplan/cutadapt:2.5
