#!/usr/bin/bash

CONTAINER_LST=( "homeassistant" "zigbee2mqtt" "mosquitto" )

for container in ${CONTAINER_LST[@]}; do
  echo "Shutting down container "$container
  docker stop $container
done

echo "Pruning containers"
docker system prune

echo "finished!"