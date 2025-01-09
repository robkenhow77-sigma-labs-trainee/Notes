# Firstly define the cloud provider
provider "aws" {
  access_key = var.SECRET_VARIABLE # see variables.tf and variables.tfvars for example
}

# Store data similar to a variable, for calling later on
data "data_source_type" "chosen_terraform_name" {
  id = "jndfivninfv45" # called in file below
}

# Created a resource such as a VPC, database or security group
resource "resource_type" "chosen_terraform_name" {
  name   = "aws_name"       # name on aws
  some_setting = data.data_source_type.chosen_terraform_name.id 
  # Lots of settings, see docs 
}