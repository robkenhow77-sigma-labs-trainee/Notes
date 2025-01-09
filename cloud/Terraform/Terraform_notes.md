# Terraform

Terraform is an Infrastructure as code software tool.\
Infrastructure as code is a way to set things up,\
such as cloud databases, using code as opposed to manually working with UIs.\
Terraform is declarative - you set the scene and terraform does the rest\

### USE THE DOCS!

Terraform has is fairly straightforward in structure but has of 'settings'.\
The structure is as follows:

  -- define provider (what cloud application you're using)\
  -- define the resources you want (databases, security group, bucket etc)

See Terraform.tf for script example

### GitHub
ONLY PUSH .tf FILES!\
on gitignore use:

```
folder_name/* --- this selects everything from a folder
!folder_name/file.tf --- this selects a file to NOT be ignored
```
### Using terraform
Run terraform init in folder.\
Run terraform plan to set up changes.\
Run terraform destroy to destroy resources.

### Variables
When using Terraform you will have sensitive information like access_keys.\
These can be stored (similarly to env variables) using varibales.tf and terraform.tfvars files.\
If the .tfvars is not named terraform you will be prompted to enter all the secret variables.\
You can make it read another file with extra cli inputs, but just name it terraform.tfvars for simplicity.

See variables.tf and variables.tfvars for example

### Output files
Terraform will create files for version control and backups. Don't push these to github