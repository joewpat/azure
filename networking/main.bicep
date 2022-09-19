param location string = 'eastus'

//deploy public dns zone for joe.surf
module pubdnsjoesurf './publicDNSjoesurf.bicep' = {
  name: 'joe-surf-dns'
}
//deploy vnet and subnet
module joenetwork1 './virtualnetwork.bicep' = {
  name: 'vnet-joe'
  params: {
    location: location
  }
}
