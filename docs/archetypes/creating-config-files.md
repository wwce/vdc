Configuration file for a deployment contains most of the important
settings needed for deploying shared services or workloads and are the primary files you
will need to edit. Before running deployment automation scripts, review and
update the parameters in these files to match your organization's settings.

Configuration files are found in the following locations:

| **Sample Deployment**          | **Configuration file location**    |
|-----------------------------|-----------------------------|
|Simulated on-premises |[archetypes/on-premises/archetype.test.json](../archetypes/on-premises/archetype.test.json)|
| shared-services |[archetypes/shared-services/archetype.test.json](../archetypes/shared-services/archetype.test.json)|
| paas |[archetypes/paas/archetype.test.json](../archetypes/paas/archetype.test.json)|
| iaas |[archetypes/iaas/archetype.test.json](../archetypes/iaas/archetype.test.json)|
| cloudbreak |[archetypes/cloudbreak/archetype.test.json](../archetypes/cloudbreak/archetype.test.json)|
| sap-hana |[archetypes/sap-hana/archetype.test.json](../archetypes/sap-hana/archetype.test.json)|


The settings in these files are broken into sections. The deployment parameters
files each have a group of "general" parameters that get used in both types of
deployments. Shared services configuration file also contain the "shared-services" group needed to create
Shared services resources. Workload parameters files have both a "shared-services" section with references
to resources that are created as part of the shared services deployment, and "workload"
parameters that apply to the resources deployed for the workload itself.

## Creating configuration files

**Important note:** *These configuration.**test**.json* files are not the actual files your deployments will use. The test versions of these files are a starting example and used as part of [integration testing](../12-integration-testing.md).

During your initial setup and preparation for any of the sample deployment types, you will need to make a copy of the sample test file and rename it *archetype.json*. This file should remain in the same folder as the copied test file. 

The archetype.json file is where you will enter your subscription, tenant, organizational, and VDC configuration information. Do not modify or delete the test file, as the values defined there are required to support integration testing.

Because they contain potentially sensitive information such as subscription IDs and user names, the default VDC Automation Toolkit [.gitignore](../.gitignore) file is set to prevent your deployment archetype.json files from being pushed to your code repository. Other users are expected to create their own versions of these files using the copy process noted above.

## Referencing parameters 

VDC Automation allows you to make use of values defined elsewhere in the shared services or workload deployment configuration file to set other parameters' values. This is done by referencing parameter values using the following format: ${parameter variable}

As an example, in a parameters file's module dependency section you can pull the organization name and shared-services deployment name from a shared services configuration file into a module's custom "resource-group-name" parameter value like this:

> "resource-group-name": "${general.organization-name}-${shared-services.deployment-name}-net-rg",

So in this case, if your parameter file defines you organization name as "contoso" and your shared-services deployment name as "hub001", the deployment script will set the resource-group-name to "contoso-hub001-net-rg" when it is executed.

## Referencing command line arguments

You can also reference values passed as arguments when the deployment script is executed. These are referred to as environment variables and are referenced using the following format: ${ENV:[variable-name]}. These variables are used in the same manner as parameter references. 

The toolkit currently supports referencing the following arguments in parameters files:

| Argument | Description | Variable Reference |
|----------|-------------|--------------------|
| {environment type} | Environment (shared-services, workload, on-premises). | ${ENV:ENVIRONMENT-TYPE} |
| -m | Resource module being deployed (ops, net, etc...). If no value is passed, then environment variable is null. | ${ENV:RESOURCE} |
| -rg | Resource group argument. If no value is passed, then environment variable is null. | $(ENV:RESOURCE-GROUP) |

For more information on these arguments, see [Launching the main automation script](05-launching-the-main-automation-script.md).