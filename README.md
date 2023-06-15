# MoFaCTs Docker
MoFaCTS is a Meteor.js driven, responsive implementation of the FaCT System designed for use by mobile participants. This is the repository for easy testing and deployment of a pre-built using docker containers.

## What is MoFACTs-Mini and MoFaCTs-Full
MoFaCTS-Full is a full featured version of Dr. Phil Pavlik's MoFACTs system, including the subsystems for authoring new content using Machine Learning. It requires additional containers including some from Dr. Andrew Olney's docker hub repositories. It is memory intensive and has a minimal requirement of 64GB of RAM.

MoFaCTS-Mini is a version of the same system that is designed to run at a lower cost while sacrificing authoring tools. It currently requires roughly 3GB or RAM

## Hardware Requirements
-40GB of Free Space
-3GB RAM (Mini)
-64GB RAM (Full)

## Sofware  Requirements
-Linux Server running a modern distrobution, such as Ubuntu
-Docker
-Docker-Compose

## Deploying
As with all docker-compose systems, the process for deploying MoFaCTs is the same.

-create /mofactsAssets folder in root directory, store your settings.json, caches, and symspell dictionaries here. Edit settings.json to show /mofactsAssets as the path and to set the administrator user.
-navigate to the directory of the docker-compose.yaml script of your choice and run:
-docker-compose up -d

## Testing
-A Vagrantfile is distributed in this repository with a provisioning script that will provide all requirements. To activate it:
vagrant up && vagrant ssh
-navigate your host browser to localhost:3000
