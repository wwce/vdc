

## Simulated on-premises deployment parameters

These parameters are used to deploy the simulated on-premises environment (/archetypes/on-premises/archetype.json).

### Shared-services settings (on-premises parameters file)

| **Parameter name** | **Type**               | **Description**                                            |
|--------------------|------------------------|------------------------------------------------------------|
| subscription-id    | Subscription ID (GUID) | ID of the subscription that shared-services resources are deployed to. |
| deployment-name    | String                 | Name of the shared-services deployment.                                |

### Simulated on-premises settings (on-premises parameters file)

| **Parameter name**            | **Type**               | **Description**                                                                                                                                                                                                                                                   |
|-------------------------------|------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| subscription-id               | Subscription ID (GUID) | ID of the subscription that simulated on-premises resources are deployed to.                                                                                                                                                                                      |
| deployment-name               | String                 | Shorthand name of the simulated on-premises deployment. Used as a secondary naming prefix when provisioning resources. This value should not contain spaces but may contain dashes and underscores.                                                               |
| region                        | String                 | The Azure region where simulated on-premises resources are deployed (for example, "West US" or "France South"). [Full list of regions](https://azure.microsoft.com/regions/)                                                                                |
| gateway-type                  | String                 | Specifies the type of connection with the shared-services network—either "vpn" or "expressroute".      |
| gateway-sku                   | String                 | Specifies the Gateway SKU used. Allowable values: <ul><li>Basic</li><li>VpnGw1</li><li>VpnGw2</li><li>VpnGw3</li></ul>[Gateway SKU details](https://docs.microsoft.com/azure/vpn-gateway/vpn-gateway-about-vpn-gateway-settings#gwsku)                                                            |
| vpn-type                      | String                 | Specifies the [type of VPN gateway](https://docs.microsoft.com/azure/vpn-gateway/vpn-gateway-connect-multiple-policybased-rm-ps#about-policy-based-and-route-based-vpn-gateways) used to connect with the shared-services network—either "RouteBased" or "PolicyBased." |
| primaryDC-IP                  | IPV4 address           | IP address of on-premises domain controller.                                                                                                                                                                                                        |
| network                       | [Network object](#common-network-parameters)                 | Configuration parameters for the simulated on-premises virtual network. |
| domain-name                   | String                 | Domain name used by the on-premises network.                                                                                                                                                                                                                                                                                                            |
| cloud-zone                    | String                 | Name of cloud DNS zone to be used for name services addressing the VDC resources                                                                                                                                                                                                                                                                                                            |
| AD-sitename                   | String                 | Site name used to register VDC hosted Active Directory Domain Services (ADDS) servers with the on-premises domain.                                                                                                                                  |
| domain-admin-user             | String                 | Domain user with rights to add trust relationship between on-premises domain and VDC hosted domain controllers.                                                                                                                                    |
| module-dependencies           | [Module Dependencies object](#common-module-dependency-parameters) | This object defines the locations, dependencies,  and behavior of resource modules used for a deployment. |
