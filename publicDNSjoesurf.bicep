
param name string = 'joe.surf'

param joesurfArecords array = [
  {
    name: 'baro'
    ip: '20.228.245.195'
  }
  {
    name: 'ipv4'
    ip: '34.75.110.238'
  }
  {
    name: '@'
    ip: '104.16.244.78'    
  }
  {
    name: 'www'
    ip: '104.16.244.78'
  }
]

resource pubdns 'Microsoft.Network/dnsZones@2018-05-01' = {
  name: name
  location: 'global'
}

resource joesurfArecord 'Microsoft.Network/dnsZones/A@2018-05-01' = [for record in joesurfArecords: { 
  parent: pubdns
  name: record.name
  properties: {
    TTL: 3600
    ARecords: [
      {
        ipv4Address: record.ip
      }
    ]
  }
  
}]
