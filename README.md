# Instruction de déploiement
Projet Réalisé par Léo Plouvier & Olivier Darny.

Ici vous trouverez comment déployer une page html ainsi qu'une version locale de wikipédia sur votre serveur.

!! Il vous faut au préalable un serveur ubuntu (que vous pouvez créer par exemple avec Ocean Digital).<br/>
Vous devez également disposer d'une connection internet.

----------------------
### 1 - Ouvrez votre Terminal de commande et rentrer la commande suivante : 
#### cd xx/xx/xx
xx/xx/xx étant le chemin d'accès au répertoire Webcloud dans lequel sont stockés les fichiers à déployer.<br/>
Cela vous permet de vous placer dans ce répertoire.

----------------------
### 2 - Se connecter à distance au serveur et lancer le déploiement via la commande :
#### sh root@xx.xx.xx.xx < ./deploy.sh
xx.xx.xx.xx étant l'adresse IP de votre serveur.<br/>
Nous avons déployer le projet sur l'adresse : 46.101.224.186 avec le password : azerty1234

----------------------
### 3 - Vous pouvez maintenant en regarder le résultat en entrant l'adresse IP de votre serveur dans votre navigateur web
