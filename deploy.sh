
#!/bin/bash
tail -n +3 "S0" | ssh root@$46.101.224.186 ; exit
set -eu

apt-get update
apt-get upgrade
apt-get intall -y ssh
apt-get install -y nginx


