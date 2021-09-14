# terraform-deploy-jenkins-server



## 1. Login to Azure and set ENV variables:

```
az login
az account list
az account set --subscription="SUBSCRIPTION_ID"
az ad sp create-for-rbac --role="Contributor" --scopes="/subscriptions/SUBSCRIPTION_ID"
```

requires the following variables:

ARM_SUBSCRIPTION_ID	SUBSCRIPTION_ID from the last command's input.
ARM_CLIENT_ID	appID from the last command's output.
ARM_CLIENT_SECRET	password from the last command's output. (Sensitive)
ARM_TENANT_ID	tenant from the last command's output.

