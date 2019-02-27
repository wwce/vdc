## Understanding Azure

<!--
TODO: I'm going to suggest that the following are module specific.
I don't want to overload the reader with too much. Even thinking about

- [Azure Key Vault](https://docs.microsoft.com/azure/key-vault/key-vault-whatis)

- [Azure Load Balancer](https://docs.microsoft.com/azure/load-balancer/load-balancer-overview)

- [Azure Application Gateway](https://azure.microsoft.com/services/application-gateway/)

- [Route tables](https://docs.microsoft.com/azure/virtual-network/tutorial-create-route-table-portal)

- [Network security groups](https://docs.microsoft.com/azure/virtual-network/virtual-networks-nsg) _(NSGs)_

- [Application security groups](https://docs.microsoft.com/azure/virtual-network/security-overview#application-security-groups) _(ASGs)_

- [Azure Firewall](https://azure.microsoft.com/services/azure-firewall/)

- [Virtual machines](https://docs.microsoft.com/azure/virtual-machines/)

- [Virtual networks](https://docs.microsoft.com/azure/virtual-network/virtual-networks-overview) _(VNets)_

- [ExpressRoute](https://azure.microsoft.com/services/expressroute/)

- [VPN gateways](https://docs.microsoft.com/azure/vpn-gateway/vpn-gateway-about-vpngateways)

- [Azure App Service Environments](https://docs.microsoft.com/azure/app-service/environment/intro) (AESs)

- [Azure SQL Database](https://azure.microsoft.com/services/sql-database/)
 -->


<!-- 
TODO: move to the section on roles 

### Rights to create custom roles

If you are using the toolkit to [deploy cusotm roles](04-creating-subscription-roles.md), you will need to have the [appriorate rights](https://docs.microsoft.com/azure/role-based-access-control/custom-roles#who-can-create-delete-update-or-view-a-custom-role) in the targeted Azure Active Directory tenant.

### Determine roles

By default, the toolkit define four custom roles that are assigned appropriate access to the relevant Azure resources:

- SecOps - Security
- NetOps - Networking
- SysOps - Infrastructure monitoring
- DevOps - Development (not used in the central IT infrastructure and network)

Before deploying your VDC, you need to create the appropriate roles in your subscription and identify which users need to be assigned to each role.

For a detailed listing of the permissions these roles should be granted, [see the discussion on roles](02-how-vdc-automation-works.md#roles-and-permissions) later in this guide. Also, see the [Creating subscription roles](04-creating-subscription-roles.md) section for instructions on using the provided scripts to deploy roles for your subscription.
-->





<!-- Links -->
[Azure VPN gateway]: https://docs.microsoft.com/azure/vpn-gateway/vpn-gateway-about-vpngateways
[ExpressRoute]: https://docs.microsoft.com/azure/expressroute/