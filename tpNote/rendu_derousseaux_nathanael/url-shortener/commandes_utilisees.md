# Commandes utilisées

## Lancer le conteneur redis

```shell
docker run --name url_shortener-redis -d -v url-shortener-redis-data:/data redis
```

## Lancer le conteneur url-shorteneur

```shell
docker run -p 3000 -e REDIS_HOST=url_shortener-redis --name url-shortener url-shortener
```

## Créer le réseau url-shortener et connecter les conteneurs

```shell
docker network create --subnet 10.0.50.0 url-shortener
docker network connect url-shortener url_shortener-redis
docker network connect url-shortener url-shortener
```

