# Azure Virtual Datacenter

_Enabling developer agility and operational consistency without compromising security and governance._

[![Build Status](https://travis-ci.org/Azure/vdc.svg?branch=master)](https://travis-ci.org/Azure/vdc)

Microsoft Azure Virtual Datacenter (VDC) is an approach for designing a foundational cloud architecture for enterprises. It provides a vision for enterprise IT in the cloud and a strategy for implementing it. For more information about the approach, visit [Azure Virtual Datacenter](https://aka.ms/vdc).

## Automation Toolkit

This repository contains the _Azure Virtual Datacenter Automation Toolkit_. The toolkit is set of deployment artifacts, Azure Resource Manager templates and scripts, and an orchestration engine. It allows you to deploy an example shared services infrastructure environment and example workload environments capable of hosting different applications. It also allows you to deploy a simulated on-premises environment, hosted in Azure, for testing purposes.

## Getting started

- [Understanding the concepts](./understand/readme.md)
    - [Prerequisite Azure knowledge](azure.md) - Resources for understanding the Azure services that the toolkit utilizes.
    - [Understanding the Automation Toolkit](toolkit.md) - Explains the important concepts in the toolkit.
    - [Understanding environment types](environment-types.md) - Describes the built-in environment types that the toolkit can deploy.
    - [Common workflow](workflow.md) - Covers the typical usage pattern for the tools in the toolkit.
    - [Roles and permissions](roles.md) - Lists the custom roles that are provided by default in the toolkit.
- [Setting up the toolkit](./setup/readme.md)
    - [Run the Docker image](setup-docker.md) (Recommended)
    - [Run on your local machine](setup-local.md)
    - [Your first deploment](your-first-deployment.md)
- [Archetypes](./archetypes/readme.md)
    - [Understanding archetype configuration files](configuration-files.adoc)
    - [Common paramets in configuration files](common-parameters.adoc)
- Extending the toolkit
- [Script Reference](./reference/readme.md)
    - [policy-assignemnt.py](script-policy-assignment.adoc) Update subscription policy post-deployment
    - [role-creation.py](script-role-creation.adoc) Create subscription roles
    - [subscription.py](script-subscription.adoc) Create management groups and subscriptions
    - [vdc.py](script-vdc.adoc) Deploy archetypes and modules
    - 
# Contributing

This project welcomes contributions and suggestions.  Most contributions require you to agree to a
Contributor License Agreement (CLA) declaring that you have the right to, and actually do, grant us
the rights to use your contribution. For details, visit https://cla.microsoft.com.

When you submit a pull request, a CLA-bot will automatically determine whether you need to provide
a CLA and decorate the PR appropriately (e.g., label, comment). Simply follow the instructions
provided by the bot. You will only need to do this once across all repos using our CLA.

This project has adopted the [Microsoft Open Source Code of Conduct](https://opensource.microsoft.com/codeofconduct/).
For more information see the [Code of Conduct FAQ](https://opensource.microsoft.com/codeofconduct/faq/) or
contact [opencode@microsoft.com](mailto:opencode@microsoft.com) with any additional questions or comments.
