# !/bin/bash

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

### Pour Mettre un wikipédia local (kiwix) : 

# Téléchargement de kiwix
wget http://download.kiwix.org/bin/kiwix-linux-x86_64.tar.bz2

#dézipper le fichier
bunzip2 kiwix-linux-x86_64.tar.bz2
tar xvf kiwix-linux-x86_64.tar

#Télécharger le fichier .zim (version francaise sans les images ici) 
#--- pour la version complète remplacer wikipedia_fr_all_nopic_2016-05.zim par wikipedia_fr_all_2016-06.zim 
wget https://download.kiwix.org/zim/wikipedia/wikipedia_fr_all_nopic_2016-05.zim

#Démarrer kiwix-serve
./kiwix/bin/kiwix-serve --port=8080 wikipedia_fr_all_nopic_2016-05.zim; exit

# Une fois kiwix-serve lancé 
# vous pouvez accédez au wikipédia local depuis votre navigateur web 
# en recherchant l'adresse http://xxx.xxx.xxx.xxx:80/ 
# xxx.xxx.xxx.xxx étant l'adresse IP de votre serveur
