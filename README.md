# Azure Virtual Datacenter

_Enabling developer agility and operational consistency without compromising security and governance._

[![Build Status](https://travis-ci.org/Azure/vdc.svg?branch=master)](https://travis-ci.org/Azure/vdc)

Microsoft Azure Virtual Datacenter (VDC) is an approach for designing a foundational cloud architecture for enterprises. It provides a vision for enterprise IT in the cloud and a strategy for implementing it. For more information about the approach, visit [Azure Virtual Datacenter](https://aka.ms/vdc).

## Automation Toolkit

This repository contains the _Azure Virtual Datacenter Automation Toolkit_. The toolkit is set of deployment artifacts, Azure Resource Manager templates and scripts, and an orchestration engine. It allows you to deploy an example shared services infrastructure environment and example workload environments capable of hosting different applications. It also allows you to deploy a simulated on-premises environment, hosted in Azure, for testing purposes.

## Getting started

- [Understanding the concepts](docs/understand/readme.md)
  - [Prerequisite Azure knowledge](docs/understand/azure.md) - Resources for understanding the Azure services that the toolkit utilizes.
  - [Understanding the Automation Toolkit](docs/understand/toolkit.md) - Explains the important concepts in the toolkit.
  - [Understanding environment types](docs/understand/environment-types.md) - Describes the built-in environment types that the toolkit can deploy.
  - [Common workflow](docs/understand/workflow.md) - Covers the typical usage pattern for the tools in the toolkit.
  - [Roles and permissions](docs/understand/roles.md) - Lists the custom roles that are provided by default in the toolkit.
- [Setting up the toolkit](docs/setup/readme.md)
  - [Run the Docker image](docs/setup/setup-docker.md) (Recommended)
  - [Run on your local machine](docs/setup/setup-local.md)
  - [Your first deploment](docs/setup/your-first-deployment.md)
- [Archetypes](docs/archetypes/readme.md)
  - [Understanding archetype configuration files](docs/archetypes/configuration-files.adoc)
  - [Common paramets in configuration files](docs/archetypes/common-parameters.adoc)
- Use
  - TODO
- Extending the toolkit
  - TODO
- [Script Reference](docs/reference/readme.md)
  - [policy-assignemnt.py](docs/reference/script-policy-assignment.adoc) Update subscription policy post-deployment
  - [role-creation.py](docs/reference/script-role-creation.adoc) Create subscription roles
  - [subscription.py](docs/reference/script-subscription.adoc) Create management groups and subscriptions
  - [vdc.py](docs/reference/script-vdc.adoc) Deploy archetypes and modules

## Contributing

This project welcomes contributions and suggestions.  Most contributions require you to agree to a
Contributor License Agreement (CLA) declaring that you have the right to, and actually do, grant us
the rights to use your contribution. For details, visit [https://cla.microsoft.com](https://cla.microsoft.com).

When you submit a pull request, a CLA-bot will automatically determine whether you need to provide
a CLA and decorate the PR appropriately (e.g., label, comment). Simply follow the instructions
provided by the bot. You will only need to do this once across all repos using our CLA.

This project has adopted the [Microsoft Open Source Code of Conduct](https://opensource.microsoft.com/codeofconduct/).
For more information see the [Code of Conduct FAQ](https://opensource.microsoft.com/codeofconduct/faq/) or
contact [opencode@microsoft.com](mailto:opencode@microsoft.com) with any additional questions or comments.