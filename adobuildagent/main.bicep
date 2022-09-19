param location string = resourceGroup().location

resource adovm 'Microsoft.Compute/virtualMachines@2022-03-01' = {
  name: 'vm-adobuild'
  location: location
  plan: {
  }
}
