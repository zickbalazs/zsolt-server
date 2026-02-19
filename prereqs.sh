#!/bin/bash
echo "Creating networks..."
docker network create qbit-network && docker network create jellyfin-network && docker network create proxy-network && docker network create db-network
echo "Starting containers...:"
cd ./proxy && docker compose up -d
cd ../
cd ./jellyfin && docker compose up -d
cd ../
cd ./qbittorrent && docker compose up -d
cd ../
cd ./dbeaver && docker compose up -d
echo "Done"
exit 0