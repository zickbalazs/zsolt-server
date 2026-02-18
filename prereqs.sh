#!/bin/bash
echo "Creating networks..."
docker network create qbit-network && docker network create jellyfin-network && docker network create proxy-network
echo "Starting containers...:"
cd ./proxy && docker compose up -d
cd ../
cd ./jellyfin && docker compose up -d
cd ../
cd ./qbittorrent && docker compose up -d
cd ../
echo "Done"
exit 0