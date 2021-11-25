## INTRODUCTION
This project allow you to create an Azure Cloud Environment for basic Data Engineering scenario.


## REQUIREMENTS
Install terraform and Azure CLI on WSL or Linux

### LOGIN AZURE WITH YOUR ROOT ACCOUNT USING WEB UI

Step 1 <br/>
az login

Step 2 <br/>
terraform apply --auto-approve

Step 3 <br/>
Get servicel principal environment variables from the file azure_infra/secrets/super_secret.env in the project <br/>
and put those environments in your host environment (WSL or Linux)


## WHAT WILL BE CREATED IN AZURE_INFRA MODULE?
A service principal has Contributor role that will be used for Data Engineering tasks <br/>
A storage account that allow Data Engineers to store their Shared Terraform State files.<br/>
An Azure Data Factory
