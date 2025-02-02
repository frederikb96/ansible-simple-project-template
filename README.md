# Ansible Simple Project Template
This is a template project for very simple ansible project, to automate very simple tasks.

## Usage

1. Copy the `group_vars/all.yml.tpl` to `group_vars/all.yml`.
2. Insert your variables there
3. Optionally encrypt the var file. Setup a vault password file and then './vault.sh -e' to encrypt the file.
4. Run the playbook

```bash
ansible-playbook main.yml
```
