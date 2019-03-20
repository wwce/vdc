# Understanding the Automation Toolkit

The Azure Virtual Datacenter Automation Toolkit is primarily made up of three things. These are _archetypes_, _modules_, and Python scripts. The primary script acts as the _orchestration engine_. These three things work together to produce a deployment.

![The flow of the toolkit](../_media/toolkit-flow.svg)

> There are additional parts of the toolkit outside of these three. They are included at the end of this document.

## Archetypes

An _archetype_ is a configuration of resources. It primarily define infrastructure, roles, and policy. The toolkit provides a numer of [sample archetypes](../archetypes) that can be deployed out of the box and that can also serve as example for building your own archetypes.
Some of the sample archetypes include:

- the simulated on-premsises environment
- the shared services environment
- environments suited to certain categories of workloads

As you can see from these samples, an archetype can satisfy a variety of needs. They often represents a set of infrastructure resources that an organization wants to deploy repeatedly through automation.

Archetypes are defined in the toolkit using a JSON notation. Take a look at the [configuration for the sample shared services archetype](../archetypes/shared-services/archetype.test.json) for a represenative example.  Archetypes are located in the `archetypes` folder.

The configuration file, typically named `archetype.json`, for an archetype contains arguments and a set of _modules_ that make up the archetype.

## Modules

A _module_ in the toolkit is a set of Azure Resource Manager templates, parameter files, and polciy defintions. Modules are the building blocks of the toolkits. They define commonly used configurations of resources that can be composed together. Modules are located in the `modules` folder.
Some of the provided modules include:

- [Log Analytics workspace](../modules/la)
- [jumpbox VM](../modules/jb)
- [Azure Key Vault](../modules/kv)

The parameter files in a module contain tokens that will be replaced based on the configuration of the archetype being deployed. This replacement is handled by the _orchestration engine_.

## Orchestration engine

The _orchestration engine_ is reponsible of coordinating the deployment of the resources defined in an archetype.
The engine reads the configuration for the specified archetype, loads the templates, parameteres, and policies from specified module and replaces the tokens, and performs some other activities that cannot be implemented using templates. (It uses the [Azure Python SDK](https://github.com/Azure/azure-sdk-for-python) and the [Azure CLI](https://github.com/Azure/azure-cli) for these).

The engine is currently implemented as a set of Python scripts. The main entry point is `vdc.py`.

## Subscription, Roles, and Policy scripts

The toolkit provides three additional scripts for managing your Azure environment.

- `subscription.py` - For managing subscriptions and management groups.
- `role_creation.py` - For creating roles and permissions in a subscription _before_ making a deployment.
- `policy_assignment.py` - For updating policy _after_ deploying resources.

## Next steps

- Learn about the [typical usage pattern](workflow.md) for the tools in the toolkit.
- Learn more about the toolkit's [sample archetypes](archetypes.adoc) and [modules](modules.adoc).
- See the [refernence documentation for the scripts(../reference/readme.md)].