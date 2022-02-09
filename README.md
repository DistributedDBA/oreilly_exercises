# Practical Database Automation 

This repository contains scripts used in the O'Reilly Online Training course "Practical Database Automation". These scripts are provided without warranty under the conditions found in LICENSE.txt.

This course walks through setting up a database environment on Google Cloud GCE instances. Terraform and Ansible are used to manipulate the cloud environment.

## Dependencies
- gcloud command line 
- Terraform 
- Ansible

## Quick Start
### Setup
This quick start guide assumes the use of Cloud Shell. The reason for this is it comes with gcloud already configured, as well as terraform and git. The only thing needed to install is ansible, as far as dependencies go. Also, a SSH key will need to be generated to connect to the instances.

- Generate an SSH key 

```
ssh-keygen -t rsa -b 4096 -C "pda_oreilly_training"
```

- Clone repo 
```
git clone https://github.com/DistributedDBA/oreilly_exercises.git
cd oreilly_exercises
```

- Install ansible, but first get python3 using pyenv, all in a helper script
```
./setup_pyenv.sh
exec "$SHELL"
./setup_ansible.sh
```


### Exercises
- [Exercise 1](examples/exercise01.md) - Set up MySQL instances
- [Exercise 2](examples/exercise02.md) - Configure MySQL replication
- [Exercise 3](examples/exercise03.md) - Perform a MySQL failover
- [Exercise 4](examples/exercise04.md) - Securing secrets

## FAQ 
- What is the purpose of Terraform?
Terraform is used only to define the resources that are provisioned. Beyond specifing the size and amount of resources, terraform also specifies how resources can work with each other via settings on security and networking.

- What is the purpose of Ansible?
Ansible defines how a specific resource is configured. Concerns of user configuration, software installed, software configuration are all realms for Ansible. Additionally, Ansible can be used for more complicated orchestration tasks involving multiple resources. For example, seeding a primary database before configuring replication on secondary databases.
