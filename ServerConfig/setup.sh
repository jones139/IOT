#!/bin/bash
#
DOCKER_FOLDER="/home/docker"
MOSQUITTO_FOLDER=$DOCKER_FOLDER"/mosquitto"
ZIGBEE_FOLDER=$DOCKER_FOLDER"/zigbee2mqtt"
HA_FOLDER=$DOCKER_FOLDER"/homeassistant"
CONFIG_FOLDER="./configDirs"
CONFIG_LST=( "homeassistant" "zigbee2mqtt" "mosquitto" )

echo "Graham's Home Server Setup"
echo ""
echo "Creating folder for docker volumes"
if [ -d $DOCKER_FOLDER ]; then
  echo "ERROR - "$DOCKER_FOLDER" already exists - not doing anything"
  exit
else
  echo "Creating folder for docker containers: "$DOCKER_FOLDER
  sudo mkdir $DOCKER_FOLDER
  #sudo mkdir $MOSQUITTO_FOLDER
  #sudo mkdir $ZIGBEE_FOLDER
  #sudo mkdir $HA_FOLDER
fi

for folder in ${CONFIG_LST[@]}; do
    echo $folder
    sudo cp -rf $CONFIG_FOLDER/$folder $DOCKER_FOLDER/$folder

done




echo "done!"
