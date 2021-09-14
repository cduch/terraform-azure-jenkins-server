# terraform-deploy-jenkins-server

Deploys a Jenkins Server on Azure

Create a workspace on TFC, connect it to a clone of this repo and then:

## 1. Login to Azure and set ENV variables in TFC:

```
az login
az account list
az account set --subscription="SUBSCRIPTION_ID"
az ad sp create-for-rbac --role="Contributor" --scopes="/subscriptions/SUBSCRIPTION_ID"
```

Set the following ENV vars in your workspace with the infos from above:

ARM_SUBSCRIPTION_ID	SUBSCRIPTION_ID from the last command's input.
ARM_CLIENT_ID	appID from the last command's output.
ARM_CLIENT_SECRET	password from the last command's output. (Sensitive)
ARM_TENANT_ID	tenant from the last command's output.

## 2. Set other Variables for Deployment

set the variables defined in variables.tf as variables in your workspace:

```
variable "prefix" {
  type = string
}
variable "suffix" {
  type = string
}

variable "location" {
  type = string
}

variable "owner" {
  type    = string
  description = "Owner which will be added as a tag to the resource group."
}

variable "admin_username" {
  type        = string
  description = "Administrator user name for virtual machine"
}

variable "admin_password" {
  type        = string
  description = "Password must meet Azure complexity requirements"
}
```