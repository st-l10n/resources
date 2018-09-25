#!/bin/bash

docker container run --rm -it \
  -v $(pwd):/resources \
  --workdir /resources \
  --user $(id -u):$(id -g) \
  gortc/steam:latest

martian update -i game/rocketstation_DedicatedServer_Data/StreamingAssets/


