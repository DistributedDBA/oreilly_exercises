# Exercise 1: Set up MySQL instances

## Walkthrough
- Configure terraform to work with your project

```
cd ~/oreilly_exercises/terraform
cp terraform.tfvars.example terraform.tfvars 
gcloud config get-value project
vi terraform.tfvars
# modify the settings, primarily projectID
terraform init
terraform apply
```

- Configure ansible
```
cd ~/oreilly_exercises/ansible
cp inventory.example inventory
vi inventory
# Modify IP from output of terraform
```

- Run ansible playbook

```
ansible-playbook playbooks/01_setup.yml
```

## Task
1. Add a second GCE instance in Terraform
2. Configure the new instance with Ansible