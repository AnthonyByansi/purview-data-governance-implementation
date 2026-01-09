@description('The prefix for resource naming')
param prefix string

@description('The Azure region for resources')
param location string

@description('Resource tags')
param tags object = {}

var purviewAccountName = '${prefix}-pvw-${uniqueString(resourceGroup().id)}'
var managedResourceGroupName = '${prefix}-pvw-managed-rg'

resource purviewAccount 'Microsoft.Purview/accounts@2021-12-01' = {
  name: purviewAccountName
  location: location
  tags: tags
  identity: {
    type: 'SystemAssigned'
  }
  properties: {
    managedResourceGroupName: managedResourceGroupName
    publicNetworkAccess: 'Enabled'
  }
}

// Role assignment for Purview Managed Identity on the resource group (optional)
// This allows Purview to scan resources in the same RG
resource purviewRoleAssignment 'Microsoft.Authorization/roleAssignments@2022-04-01' = {
  name: guid(resourceGroup().id, purviewAccount.id, 'Reader')
  scope: resourceGroup()
  properties: {
    roleDefinitionId: subscriptionResourceId('Microsoft.Authorization/roleDefinitions', 'acdd72a7-3385-48ef-bd42-f606fba81ae7') // Reader
    principalId: purviewAccount.identity.principalId
    principalType: 'ServicePrincipal'
  }
}

output purviewAccountName string = purviewAccount.name
output purviewAccountId string = purviewAccount.id
output purviewIdentityPrincipalId string = purviewAccount.identity.principalId
