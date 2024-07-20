# Ansible vs Terraform

Assumes that you already have a keypair associated with the region you want to launch infrastructure in, and profiles set up in `~/.aws/credentials`.

## Ansible

```
cd ansible

asdf install
pip install -r requirements.txt

export AWS_PROFILE=...
ansible-playbook create.yml
ansible-playbook configure.yml
ansible-playbook orchestrate.yml
ansible-playbook destroy.yml
```

## Terraform

```
cd terraform

asdf install

export AWS_PROFILE=...
terraform init
terraform plan
terraform apply
terraform output
terraform graph -type=plan | dot -Tpng >graph.png
terraform destroy
```
