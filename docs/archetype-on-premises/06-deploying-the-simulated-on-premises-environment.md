# Deploying the simulated on-premises environment

All of the sample archetypes provided in the Azure Virtual Datacenter Automation Toolkit, inclduing the shared services archetype, are configured to work with a _simulated on-premises environment_.

This environment provides a virtual network with a VPN gateway and a single VM. This VM is configured as the **Contoso** primary domain controller and provides domain services to all other resources once the shared services network is connected to this simulated on-premises environment.

In the default configuration provided by the toolkit, any resources deployed with the sample archetypes will be be isolated from the internet except for the simulated on-premises. The only way to access these isolated resources will be through the domain controller VM after the shared services network is connected.

This is intended to simulate the experience of a _trusted datacenter extension_, where none of the public cloud resources can communicate directly with the internet and all traffic is routed through the on-premises environment.

If you're planning to use a simulated on-premises, you should deploy it before starting the sample shared services deployment.

## Prerequisite: create and configure your parameters file

The toolkit provides an example configuration file for the simulated on-premises environment. You will need to create a new version of this file before running your deployment.

1. Navigate to the toolkit's [archetypes/on-premises](../../archetypes/on-premises) folder.
1. Make a copy of the `archetype.test.json` and name the copy `archetype.json`.
1. Edit `archetype.json` providing the subscription, organization, networking, and other configuration information that you want to use for your deployment. You will need to use some of the same values when creating the configuration for the shared services environment.

If your copy of the toolkit is associated with the git repository, the [.gitignore](../../.gitignore) file is set to prevent your deployment `archetype.json` file from being pushed to your code repository.

NOTE: The `deployment-user-id` is the user's azure active directory object id.

## Run the deployment

Start the "on-premises" deployment by running the following command in the terminal
or command-line interface:

[Linux/OSX]

>   *python3 vdc.py create on-premises -path
>   "archetypes/on-premises/archetype.json" --upload-scripts*

[Windows]

>   *py vdc.py create on-premises -path
>   "archetypes/on-premises/archetype.json" --upload-scripts*

[Docker]

>   *python vdc.py create on-premises -path
>   "archetypes/on-premises/archetype.json" --upload-scripts*

This deployment creates two resource groups:

*{organization name}-{deployment name}-onprem-net-rg* - hosting the networking resources for the simulated on-premises environment. These resources are described in the following table.

| **Resource**                                                      | **Type**                | **Description**                                                                    |
|-------------------------------------------------------------------|-------------------------|------------------------------------------------------------------------------------|
| {organization name}-{deployment name}-default-nsg                 | Network security group  | Network security group attached to the default \\ subnet.                          |
| {organization name}-{deployment name}-vnet                        | Virtual network         | Simulated on-premises virtual network.                                             |
| {organization name}-{deployment name}-gw                          | Virtual network gateway | Gateway used to connect the                                                        |
| {organization name}-{deployment name}-gw-pip                      | Public IP address       | Publicly accessible IP address used by the gateway.                                |

*{organization name}-{deployment name}-onprem-ad-rg* - hosting the active directory servers and related resources used in the simulated on-premises environment. These resources are described in the following table.

| **Resource**                                                      | **Type**                | **Description**                                                                    |
|-------------------------------------------------------------------|-------------------------|------------------------------------------------------------------------------------|
| {organization name}{deployment name}ad{random characters}         | Storage account         | Storage account used to store diagnostic logs related to the AD server.            |
| {organization name}-{deployment name}-ad-vm                       | Virtual machine         | Active Directory server VM.                                                        |
| {organization name}-{deployment name}-ad-vm-nic                   | Network interface       | Virtual network interface for primary AD server.                                   |
| {organization name}-{deployment name}-ad-vm-nic-pip               | Public IP address       | Public endpoint that allows you to access the simulated domain server VM remotely. |
| {organization name}{deployment name}advmosdisk{random characters} | Disk                    | OS disk for the AD server VM.                                                      |
