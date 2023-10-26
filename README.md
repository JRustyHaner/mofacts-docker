# MoFaCTs Docker

MoFaCTS is an implementation of the FaCT System, powered by Meteor.js, specifically designed for mobile participants. This repository facilitates easy testing and deployment of pre-built MoFaCTs using Docker containers.

## MoFACTs-Mini and MoFaCTs-Full

MoFaCTS-Full is the comprehensive version of Dr. Phil Pavlik's MoFACTs system, which includes authoring tools utilizing Machine Learning. It requires additional containers from Dr. Andrew Olney's Docker Hub repositories. Due to its memory-intensive nature, it requires a minimum of 64GB RAM.

MoFaCTS-Mini is a more cost-effective version of the system that sacrifices authoring tools. It currently operates with around 3GB of RAM.

## Hardware Requirements

- 40GB of available storage space
- 3GB RAM (for MoFaCTS-Mini)
- 64GB RAM (for MoFaCTS-Full)

## Software Requirements (Remote)

- Linux Server running a modern distribution, such as Ubuntu
- Docker
- Docker Compose

## Software Requirements (Local)

- Windows 10, Linux, or Mac OSX
- Vagrant
- Virtualbox

## Deployment

To deploy MoFaCTs, follow the standard procedure for Docker Compose systems:

1. Create a folder named `/mofactsAssets` in the root directory. Store your `settings.json`, caches, and Symspell dictionaries in this folder. Edit `settings.json` to specify `/mofactsAssets` as the path and set the administrator user.
2. Navigate to the directory containing the desired `docker-compose.yaml` script.
3. Run the following command: docker-compose up -d

## Monitoring and Notifications

To ensure the smooth operation of your MoFaCTs Docker deployment, it's essential to set up monitoring and notifications. You can use a custom script, `container-status-check.sh`, to periodically check the health of your containers and receive email notifications in case of issues.

### Configuring `container-status-check.sh`

1. Use the provided script file named `container-status-check.sh` in a directory of your choice.

2. Edit the `container-status-check.sh` script and specify the MoFaCTs Docker container ID and email addresses to notify as follows:

   ```bash
        CONTAINER_ID="<mofacts container id>"
        EMAILS=("<your email address>", "<second email address>")
   # ...

3. Install SSMTP 

```bash 
    sudo apt install ssmtp -y
```

4.  To enable email notifications, you can use ssmtp with a sample `ssmtp.conf` file, changing the file to match your email provider's credentials.

```bash
    #
    # Config file for sSMTP sendmail
    # Example for configuring mofacts to send emai
    #
    # The person who gets all mail for userids < 1000
    # Make this empty to disable rewriting.
    root=<email address that will send the emails>

    # The place where the mail goes. The actual machine name is required no
    # MX records are consulted. Commonly mailhosts are named mail.domain.com
    mailhub=<outgoing mail server>:587

    # Where will the mail seem to come from?
    rewriteDomain=optimallearning.org

    AuthUser=<your email username>
    AuthPass=<your email password>

    # The full hostname
    hostname=staging
```

5. To regularly monitor your MoFaCTs Docker container, you can schedule the container-status-check.sh script as a cron job. Open your crontab configuration:

```bash
    crontab -e
```

6. Append to your configuration this entry to run once every hour, specifiying the absolute path of the script:
```bash
    0 * * * * /path/to/container-status-check.sh

```

Feel free to adjust the scheduling interval to meet your specific monitoring needs.

## Testing

A Vagrantfile is provided in this repository along with a provisioning script that sets up all the requirements. To use it:

1. Run the following commands: vagrant up && vagrant ssh
2. Follow the instructions in the welcome message.
3. In your host browser, navigate to `localhost:3000`.

Feel free to explore and test the MoFaCTs system using the provided Vagrant setup for a hassle-free testing experience.
