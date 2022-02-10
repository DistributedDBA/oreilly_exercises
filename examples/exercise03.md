# Exercise 3: Securing secrets

## Walkthrough

- Review playbook 
- Run ansible playbook

```
ansible-playbook playbooks/03_secure.yml
```

- Encrypt password with ansible-vault

```
ansible-vault encrypt_string training
```

- Replace password in the playbook, and re-run

```
ansible-playbook --ask-vault-pass playbooks/03_secure.yml
```

## Task
- Convert to use an encrypted vault file. Encrypt group_vars/source.yml. Be sure to remove variable from playbook

Relevant commands:
```
ansible-vault encrypt group_vars/source.yml
ansible-vault decrypt group_vars/source.yml
```