# Ansible vs Terraform

## Ansible

Assumes that you already have a keypair associated with the region you want to launch infrastructure in, and profiles set up in `~/.aws/credentials`.

```
cd ansible

asdf install
pip install -r requirements.txt

export AWS_PROFILE=...
ansible-playbook create.yml
```
