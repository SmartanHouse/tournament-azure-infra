<#
 # Create azure storage blob to host static website
#>
az login

$subscription_id = Read-Host "Please enter azure subscription id"
az account set --subscription $subscription_id

$storage_account_name = Read-Host "Please enter azure storage account name"
az account set --subscription $subscription_id

az storage blob service-properties update --account-name $storage_account_name --static-website --404-document 'error404.html' --index-document 'index.html'