# Home Automation Server Configuration

## Purpose

This folder contains the files used to configure my home automation server.   The idea is that I can use this again if the server breaks so I can set up a new one easily.

## Server Overview

The server is intended to fulfil several roles, while minimising power consumption.

  - **Home Assistant**:  Use home assistant for monitoring and logging of 
    - temperatures, 
    - power consumption
    - central heating operation
    - greenhouse watering parameters
  - **Zigbee2mqtt**:  transate messages from zigbee devices into mqtt protocol that I am trying to use as standard.
  - **MQTT Broker** (mosquitto):  Receive and distribute MQTT messages from sensors to other systems (e.g. Home Assistant)
  - **CatoCam**:  cctv based cat detector, linked to CatoZap cat deterrer via MQTT.

To make re-configuration on another server easy, I am using Docker to run the various server components in containers, which are easily installed using docker-compose.

## Installation

These installation instructions assume we are starting with a relatively fresh install of Ubuntu linux.

  - Clone this repository: `git clone https://github.com/jones139/IOT.git`
  - Change directory to the ServerConfig folder: `cd IOT/ServerConfig`
  - Install Docker:  https://docs.docker.com/engine/install/ubuntu/#install-using-the-repository
  - Install Docker-Compose: `apt install docker-compose`
  - Create the configuration and data folders for the various services:  `cp -rf configDirs/* /home`.   This should create /home/HomeAssistant, /home/mosquitto and /home/zigbee2mqtt

