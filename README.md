# MoFaCTs Docker

MoFaCTS is an implementation of the FaCT System, powered by Meteor.js, specifically designed for mobile participants. This repository facilitates easy testing and deployment of pre-built MoFaCTs using Docker containers.

## MoFACTs-Mini and MoFaCTs-Full

MoFaCTS-Full is the comprehensive version of Dr. Phil Pavlik's MoFACTs system, which includes authoring tools utilizing Machine Learning. It requires additional containers from Dr. Andrew Olney's Docker Hub repositories. Due to its memory-intensive nature, it requires a minimum of 64GB RAM.

MoFaCTS-Mini is a more cost-effective version of the system that sacrifices authoring tools. It currently operates with around 3GB of RAM.

## Hardware Requirements

- 40GB of available storage space
- 3GB RAM (for MoFaCTS-Mini)
- 64GB RAM (for MoFaCTS-Full)

## Software Requirements

- Linux Server running a modern distribution, such as Ubuntu
- Docker
- Docker Compose

## Deployment

To deploy MoFaCTs, follow the standard procedure for Docker Compose systems:

1. Create a folder named `/mofactsAssets` in the root directory. Store your `settings.json`, caches, and Symspell dictionaries in this folder. Edit `settings.json` to specify `/mofactsAssets` as the path and set the administrator user.
2. Navigate to the directory containing the desired `docker-compose.yaml` script.
3. Run the following command: docker-compose up -d

## Testing

A Vagrantfile is provided in this repository along with a provisioning script that sets up all the requirements. To use it:

1. Run the following commands: vagrant up && vagrant ssh
2. In your host browser, navigate to `localhost:3000`.

Feel free to explore and test the MoFaCTs system using the provided Vagrant setup for a hassle-free testing experience.
