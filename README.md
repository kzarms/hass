# hass
My home automation


## Prepare WSL2 for connection
```
ssh-keygen -t rsa -b 4096 -f ~/.ssh/id_rsa -C <emailAddress> -q -N ""
ssh-copy-id -i <username@hostname>

sudo -u homeassistant -H -s
cd /srv/homeassistant
sudo python3.8 -m venv .
source bin/activate

```


## Copy content

```
scp .homeassistant/ <username@hostname>:/home/homeassistant/.homeassistant/


scp .homeassistant/configuration.yaml <username@hostname>:/home/homeassistant/.homeassistant/configuration.yaml

# Test config and restart

hass --script check_config
pkill hass
hass --daemon


flake8 .homeassistant/configuration.yaml --count --show-source

```