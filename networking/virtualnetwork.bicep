param location string

resource vnet 'Microsoft.Network/virtualnetworks@2015-05-01-preview' = {
  name: 'vnet-joe'
  location: location
  properties: {
    addressSpace: {
      addressPrefixes: [
        '10.0.0.0/16'
      ]
    }
    subnets: [
      {
        id: 'snet-joe'
        name: 'snet-joe'
        properties: {
          addressPrefix: '10.0.0.0/24'
        }
      }
    ]
  }
}
