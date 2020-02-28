#!/bin/bash

sudo docker run --rm --name volatility \
	-v /home/maki/Tools/plugin_vol:/opt/plug_vol \
	-v ${PWD}:/opt/usr_land \
	-ti volatility
