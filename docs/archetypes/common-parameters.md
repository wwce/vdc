
following creating config

## Shared parameters

Several groups of parameters are used in multiple parameters files. 

### General settings

These parameters define VDC settings used by all deployments.

| **Parameter name**               | **Type**                  | **Description**                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
|----------------------------------|---------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| organization-name                | String                    | Shorthand name of the organization or group deploying the VDC. This is used as a naming prefix when creating resource groups and resources. It should not contain spaces but may contain dashes and underscores.                                                                                                                                                                                                                                                   |
| tenant-id                        | Azure AD Tenant ID (GUID) | ID of the Azure Active Directory tenant associated with the Azure subscription you're deploying resources to.                                                                                                                                                                                                                                                                                                                                                      |
| deployment-user-id               | Azure AD User ID (GUID)   | ID of the user account deploying the shared services Key Vault. This user is set as the default service principal for the environment's vault.                                                                                                                                                                                                                                                                                                                                 |
| vdc-storage-account-name         | String                    | Storage account where deployment output and scripts are stored. All VDC automation storage accounts within a subscription are created within the vdc-storage-rg resource group.                                                                                                                                                                                                                                                                                    |
| vdc-storage-account-rg           | String                    | Resource group containing VDC storage accounts.                                                                                                                                                                                                                                                                                    |
| module-deployment-order          | String[Array]             | This is a list of the resource modules you can provision in a deployment. Each item corresponds to folder names in both the deployments and parameters folder where corresponding Resource Manager templates and parameters files reside. A resource type must be defined in this list to be used by the automation deployment scripts. If attempting to deploy all resources, the deployment scripts attempt to process resources in the order they appear in this list. |
| validation-dependencies          | String[Array]             | This is a list of the resource modules that are deployed as part of deployment validation. Some dependencies, such as a Key Vault may need to exist in a subscription to validate other components of a deployment. Note that if any resources in this list themselves have dependencies defined in a shared services or workload module-dependencies parameter, those dependencies will also be deployed as is done in standard  deployments. See the [deployment validation](11-deployment-validation.md) topic for more information on this parameter is used. |

### Common network parameters

The network parameters object is used by multiple parameters files to define virtual network settings for a deployment. Note that all parameters in this section are required. If a setting is unused, leave it as blank rather than omit the parameter. It's recommended that when creating a new network component, such as a subnet definition, it may be easier to copy an existing definition and modify it than creating a new definition manually to ensure you've correctly included all the required parameters.  

| Parameter name                | Type                | Description                                                                                                                                                                                |
|-------------------------------|---------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| address-prefix                | CIDR range          | A CIDR range definition for the virtual network. This range must not overlap with the on-premises network or any workload network ranges.                                                     |
| application-security-groups   | Object[Array]       | An array of objects representing Application Security Group (ASG) definitions. Each object contains a name parameter for an ASG                                                            |
| network-security-groups       | Object[Array]       | An array of Network Security Group (NSG) definitions, each definition contains two parameters:<ul><li>name [String]: name for the NSG rule.</li><li>rules [Object]: collection of NSG rule definitions.</li></ul> |
| network-security-groups/rules | Object[Array]       | An array of NSG rules definition. Each definition contains the following parameters: <ul><li>name [String] - Name of the rule.</li><li>properties [Object] - The rules property object contains the following parameters:</li><ul><li>access - Allow/Deny</li><li>destinationAddressPrefixes - Array of assigned destination CIDR ranges</li><li>destinationAddressPrefix - Single assigned destination CIDR range</li><li>destinationPortRange - Range of destination port ranges (for example: 22-43)</li><li>destinationPortRanges - Array of individual destination ports</li><li>direction - Inbound/Outbound</li><li>priority - priority relative to other rules</li><li>protocol - TCP/UDR</li><li>sourceAddressPrefix - assigned source CIDR range</li><li>sourcePortRange - Range of source port ranges (for example: 22-43)</li><li>sourcePortRanges - Array of individual source ports</li><li>destinationApplicationSecurityGroups - Array of ASGs that apply to the destination</li><li>sourceApplicationSecurityGroups - Array of ASGs that apply to the source</li></ul></ul>|
| user-defined-routes           | Object[Array]       | An array of User Defined Route (NSG) definitions, each definition contains two parameters: <ul><li>name [String]: name for the UDR collection.</li><li>routes [Object]: collection of UDR definitions.</li></ul> |
| user-defined-routes/routes    | Object[Array]       | An array of UDR definitions. Each definition contains the following parameters: <ul><li>name [String] - Name of the route.</li><li>properties [Object] - The route property object contains the following parameters:</li><ul><li>addressPrefix [CIDR range] - IP addresses that the route applies to.</li><li>nextHopIpAddress [IPV4 address] - IP address to route traffic to.</li><li>nextHopType [String] - One of the [allowed next hop types](https://docs.microsoft.com/azure/network-watcher/network-watcher-next-hop-overview). </li></ul></ul> |
| subnets                       | Object[Array]       | An array of subnet definitions for the virtual network. Each definition contains the following parameters: <ul><li>name [String] - Subnet name<li>address-prefix [CIDR range] - IP address range definition for the subnet.</li><li>network-security-group [String] - Name of NSG to attach to the subnet.</li><li>user-defined-route [String] - Name of UDR collection to attach to the subnet.</li><li>service-endpoints [Array] - List of PaaS service endpoint to attach to the subnet.</li></ul> |
| dns-servers                   | IPV4 Address[Array] | An array of one or more DNS entries that the virtual network will use for name resolution.  |

### Common module dependency parameters

The module-dependencies parameters object is used by multiple parameters files to define the location of deployment module files, the module version being used, and dependencies for that module. Module dependency parameters are required unless otherwise specified.

| Parameter name                | Type                | Description                                                                                                                                                                                |
|-------------------------------|---------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| import-module                 | String              | Optional path value specifying where resource modules folders are located. If specified, the deployment scripts will look for the module files in a subfolder (corresponding to the module name) of this path. Supports absolute file paths or relative paths [using the file() function]. Relative paths should be based off of the root vdc automation folder.<br/>If this value is not specified, the deployment will look for resource module folders under the root vdc automation folder unless paths are specified in the module dependency definition's source object. |
| modules                       | Object[Array]       | The modules array contains a list of module dependency definitions. Each definition contains the following properties describing a deployment module:<ul><li>module [String] - Deployment module name. Should correspond to the name listed in the parameter file's module-deployment-order array and the folder name where the module source files are located.</li><li>same-resource-group [Boolean] - If set to true, this setting forces dependent resources to deploy in the same resource group as the resource (optional).</li><li>create-resource-group [Boolean] - If set to false, this setting deploys the resource in the same resource group as its dependency (optional).</li><li>resource-group-name [String] Allows you to override the default resource group name used in a deployment (optional).</li><li>source [Object] - Information about the source files that make up the module. Contains the following properties:<ul><li>version [String] - version of the module code used for the deployment. Should match the version folder where source files are located.</li><li>template-path [String] - Path specifying location of the ARM deployment file used by the module. Overrides the import-module parameter if used and offers the same pathing options (optional).</li><li>parameters-path [String] - Path specifying location of the ARM parameters file used by the module. Overrides the import-module parameter if used and offers the same pathing options (optional).</li><li>policy-path [String] - Path specifying location of the ARM policy file used by the module. Overrides the import-module parameter if used and offers the same pathing options (optional).</li></li></ul><li>dependencies [Array] - list of modules this module is dependent on.</li></ul> |