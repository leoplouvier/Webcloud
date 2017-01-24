
# !/bin/bash
#connection 
tail -n +3 "S0" | ssh root@46.101.224.186 ; exit

#Exclusion des erreurs
set -eu

#Mise à jour de la VM
apt-get update
apt-get upgrade

#installation du serveur web et de l'outil git
apt-get install nginx -y
apt-get install git -y

#placement dans le répertoire /var/www/html/
cd /var/www/html/

#importation du projet github
git clone https://github.com/leoplouvier/Webcloud

#copie de index.html
cp index.html Webcloud

#accord de tous les droit aux utilisateurs su les fichier
cd Webcloud 
chmod +rwx deploy.sh
chmod +rwx index.html
