#!/bin/bash

# Copyright 2021
# Georgia Tech
# All rights reserved
# Do not post or publish in any public or forbidden forums or websites

echo "Killing any existing rogue AS"
./stop_rogue.sh

echo "Starting rogue AS"
sudo python run.py --node R4 --cmd "/usr/lib/frr/zebra -f conf/zebra-R4.conf -d -i /tmp/zebra-R4.pid > logs/R4-zebra-stdout"
sudo python run.py --node R4 --cmd "/usr/lib/frr/bgpd -f conf/bgpd-R4.conf -d -i /tmp/bgpd-R4.pid > logs/R4-bgpd-stdout"
