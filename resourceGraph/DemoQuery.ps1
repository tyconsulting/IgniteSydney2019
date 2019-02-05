## Sample: find all public facing storage accounts
#Sammple Query: "where type =~ 'microsoft.storage/storageAccounts' and aliases['Microsoft.Storage/storageAccounts/networkAcls.defaultAction'] == 'Allow'" 

## PowerShell:
#Sign-in
Add-AzAccount

#install Az.Graph module if necessary
#install-module az.resourcegraph -force
Search-AzGraph -Query "where type =~ 'microsoft.storage/storageAccounts' and aliases['Microsoft.Storage/storageAccounts/networkAcls.defaultAction'] == 'Allow'" | Format-Table kind, Location, ManagedBy, Name, ResourceGroup, SubscriptionId, TenantId

## Azure CLI
#Sign-in
az login
#enable resource-graph extension if necessary:
#az extension add --name resource-graph
az graph query -q "where type =~ 'microsoft.storage/storageAccounts' and aliases['Microsoft.Storage/storageAccounts/networkAcls.defaultAction'] == 'Allow'" --output table