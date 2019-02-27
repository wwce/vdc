## On-premises connectivity requirements

The toolkit assumes you will be connecting your shared services to an on-premises network with domain services running. You will need to use one the following methods.

| Connection method    | Description
| :-                   | :-
[Azure VPN gateway][]  | VPN gateways create a site-to-site connection that passes encrypted traffic over the public Internet. This method requires a [supported VPN device](https://docs.microsoft.com/azure/vpn-gateway/vpn-gateway-about-vpn-devices) hosted in your on-premises data center that the Azure VPN gateway deployed in the VDC can connect to.
[ExpressRoute][]       | ExpressRoute uses a dedicated, private connection facilitated by a connectivity provider. For security and performance purposes, most organizations prefer ExpressRoute connections. Since these take several weeks to provision, VPN gateways can be used as a bootstrap connection until an ExpressRoute connection is available. If you plan to use an ExpressRoute with a toolkit deployment, it must already exist. It cannot be provisioned as part of a toolkit deployment like a VPN gateway can.
See [Create and modify an ExpressRoute circuit](https://docs.microsoft.com/azure/expressroute/expressroute-howto-circuit-portal-resource-manager) for details on establishing an ExpressRoute.

For testing purposes, the toolkit includes tan archetype for a [simulated on-premises environment](06-deploying-the-simulated-on-premises-environment.md) hosted on Azure. The toolkit will automatically connect this environment to your shared services network using a VPN gateway (Vnet-2-Vnet connection type).

If you plan to connect an actual on-premises environment, you will need to manually configure ExpressRoute or VPN connections after creating the shared services virtual network. You must establish these connections before any VDC resources can join the on-premises domain or make use of any other on-premises resources.

See [Choose a solution for connecting an on-premises network to Azure](https://docs.microsoft.com/azure/architecture/reference-architectures/hybrid-networking/) for additional guidance.