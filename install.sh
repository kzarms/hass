#!/usr/bin/sh

# https://www.home-assistant.io/installation/nuc
# Latest updates
sudo apt-get update
sudo apt-get upgrade -y

# Install packets
sudo apt-get install -y python3 python3-dev python3-venv python3-pip libffi-dev libssl-dev libjpeg-dev zlib1g-dev autoconf build-essential libopenjp2-7 libtiff5

# Create user
sudo useradd -rm homeassistant

# Create virtual environment
sudo mkdir /srv/homeassistant
sudo chown homeassistant:homeassistant /srv/homeassistant

# Crate core env
sudo -u homeassistant -H -s
cd /srv/homeassistant
python3.8 -m venv .
source bin/activate

# Install hass inside virtual environment
python3 -m pip install wheel
pip3 install homeassistant
hass
