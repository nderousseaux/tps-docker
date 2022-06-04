#!/bin/sh

#On remet à zero
docker stop mediaWiki
docker stop mediawiki_db
docker rm mediaWiki
docker rm mediawiki_db
docker network rm mediawiki_network

#On crée la bdd
docker create --env MYSQL_RANDOM_ROOT_PASSWORD=yes --env MYSQL_USER=mediawiki_db_user --env MYSQL_PASSWORD=mediawiki_db_password --env MYSQL_DATABASE=mediawiki_db_name --name mediawiki_db mysql:5.7

#On crée mediawiki
docker create --name mediaWiki -p 8888:80 mediawiki

#On crée le réseau
docker network create --internal mediawiki_network
docker network connect mediawiki_network mediaWiki
docker network connect mediawiki_network mediawiki_db

#On alume les conteneurs
docker start mediaWiki
docker start mediawiki_db
