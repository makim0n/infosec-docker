#!/bin/bash

sudo docker run --rm -v ${PWD}:/opt/usr_land --net=host --env="DISPLAY" --volume="$HOME/.Xauthority:/root/.Xauthority:rw" -ti rdp_replay
