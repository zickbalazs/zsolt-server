#!/bin/bash
echo "Creating networks..."
docker create network qbit-network && docker create network jellyfin-network && docker create network proxy-network
echo "Starting containers...:"
cd ./proxy && docker compose up -d
cd ../
cd ./jellyfin && docker compose up -d
cd ../
cd ./qbittorrent && docker compose up -d
cd ../
echo "Done"
exit 0