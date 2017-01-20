
#!/bin/bash
ssh root@46.101.224.186
set -eu

apt-get update
apt-get upgrade
apt-get install nginx

