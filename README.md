# Azure Virtual Datacenter

_Enabling developer agility and operational consistency without compromising security and governance._

[![Build Status](https://travis-ci.org/Azure/vdc.svg?branch=master)](https://travis-ci.org/Azure/vdc)

Microsoft Azure Virtual Datacenter (VDC) is an approach for designing a foundational cloud architecture for enterprises. It provides a vision for enterprise IT in the cloud and a strategy for implementing it. For more information about the approach, visit [Azure Virtual Datacenter](https://aka.ms/vdc).

## Automation Toolkit

This repository contains the _Azure Virtual Datacenter Automation Toolkit_. The toolkit is set of deployment artifacts, Azure Resource Manager templates and scripts, and an orchestration engine. It allows you to deploy an example shared services infrastructure environment and example workload environments capable of hosting different applications. It also allows you to deploy a simulated on-premises environment, hosted in Azure, for testing purposes.

## Getting started

We recommended that you start reading the documentation.

- [Understanding the concepts](./understand/readme.md)
    - Azure knowledge prerequisites
    - Toolkit concepts
    - Environment types in the toolkit
    - Roles & permissions in the toolkit
- [Setting up the toolkit](./setup/readme.md)
    - Docker (recommended)
    - Local
    - Running your first deployment
- Extending the toolkit
- Reference
    - vdc.py
    - role-creation.py
    - poliy-assignment.py
    - create-subscription.py

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
