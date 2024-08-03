# Ansible vs Terraform

Assumes that you already have an [EC2 keypair](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html) in the region you want to launch infrastructure, and profiles set up in `~/.aws/credentials` ([how to use a credentials file](https://docs.aws.amazon.com/cli/v1/userguide/cli-configure-files.html))

## Ansible

```
# Change to the Ansible directory
cd ansible

# Install the requirements (assumes you're using `asdf` version manager)
asdf install
pip install -r requirements.txt

# Run the Ansible playbooks to create, configure, orchestrate and destroy
export AWS_PROFILE=...
ansible-playbook create.yml
ansible-playbook configure.yml
ansible-playbook orchestrate.yml
ansible-playbook destroy.yml
```

## Terraform

```
# Change to the Terraform directory
cd terraform

# Install the requirements (assumes you're using `asdf` version manager)
asdf install

# Run the Terraform operations
export AWS_PROFILE=...
terraform init
terraform plan
terraform apply
terraform output
terraform graph -type=plan | dot -Tpng >graph.png
terraform destroy
```
