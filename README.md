# Plugins Updater

This is a simple docker repo to update plugins for transgamers.

To update the files:

go to ./data/plugins, remove all jar files (leave the folders) and when prompted, type "y".

Then run these commands:

```
docker compose down
docker compose pull
docker compose up plugins-updater -d
docker compose down
docker compose up world -d
```

Keeps all JAR files updated
