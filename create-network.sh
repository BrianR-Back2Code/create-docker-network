#!/bin/bash

# Netzwerk erstellen
docker network create my_bridge_network

# Container starten und mit Netzwerk verbinden
docker run -dit --name container1 --network my_bridge_network ubuntu tail -f /dev/null
docker run -dit --name container2 --network my_bridge_network ubuntu tail -f /dev/null

# Hinweis zur Installation von ping
echo "Jetzt kannst du enter-container.sh ausführen"
