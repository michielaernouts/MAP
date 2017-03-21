#!/bin/bash
gnome-terminal --tab -e ~/scripts/simulation_launchscripts/launch_mavproxy.sh --tab -e ~/scripts/simulation_launchscripts/spawn_copter.sh

### WAIT AND OPEN DIGITAL JOYSTICK
#sleep 6
#gnome-terminal -e ~/scripts/simulation_launchscripts/remote.sh
