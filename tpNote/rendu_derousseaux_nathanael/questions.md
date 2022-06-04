# TP noté docker

## Questions

1. Pour lancer un conteneur en mode interactif, basé sur l'image debian et nommé  *debian-interactif* on utilise la commande : `docker run --it --name debian-interactif debian`.
2. Pour lancer un conteneur temporaire, basé sur l'image alpine en exécutant la commande *hostname*, on utilise la commande : `docker run --rm alpine hostname`
3. `docker ps` permet d'afficher tout les conteneurs en fonctionnement, l'option `-a` permet d'afficher même ceux stoppés.
4. Pour afficher les infos d'un conteneur, y compris les réseaux auxquels il appartient, on utilise la commande `docker inspect <nomDuConteneur>`.
5. Si l'on ouvre un port sur le conteneur, mais que l'on ne spécifie pas de port sur la machine hote, le port du conteneur sera relié au port de même numéro sur la machine hote. Ainsi : `-p 80` sera similaire à `-p 80:80`. 
6. De façon général, le conteneur contient le moins de processus possible, uniquement ceux nécessaire (par exemple, pour un conteneur nginx, ce sera uniquement le processus nginx qui tournera). Si l'on tue le processus ayant le plus petit PID, le conteneur s'arrête.



