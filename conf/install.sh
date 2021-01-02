#!/bin/bash

# system-level config file installer for apple cirrus 8409 driver
#
# Author       : Finn Rayment <finn@rayment.fr>
# Date created : 31/12/2020

# copy the alsa config to the user-independant location
cp asound.conf /etc/

# copy the udev rules
cp 91-pulseaudio.rules /etc/udev/rules.d/

# copy the cirrus profile to the system directory
# if there happens to exist a better place then change this
cp apple-cirrus.conf /usr/share/pulseaudio/alsa-mixer/profile-sets/

