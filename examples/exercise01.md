# Exercise 1: Set up MySQL instances

## Walkthrough
- Configure terraform to work with your project

```
cd ~/oreilly_exercises/ansibleterraform
cp terraform.tfvars.example => terraform.tfvars 
# modify the settings, primarily projectID
terraform init
terraform apply
```

- Configure ansible
```
cd ~/oreilly_exercises/ansible
cp inventory.example inventory
# Modify IP from output of terraform
```

- Run ansible playbook

```
ansible-playbook playbooks/01_setup.yml
```
