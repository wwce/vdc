## Sample deployments

A VDC deployment uses a deployment configuration file (archetype.json) which defines the unique settings and configuration for shared services, workload, or sample on-premises resources you're deploying. These configuration files reference resource deployment modules, which are the building blocks the automation scripts use to provision specific resources on the azure platform.

The toolkit provides several sample deployments built for Contoso, a fictional
organization. You can use these samples for testing VDC automation and as a
starting point for creating your own custom deployments.

| Sample Deployment                                | Description
| :-                                               | :-
| [shared-services](../archetypes/shared-services) | A basic VDC shared services environment providing secure on-premises connectivity and central controls for the entire VDC.
| [paas](../archetypes/paas)                       | A simple PaaS workload environment using SQL Azure and secured App Service Environments.
| [iaas](../archetypes/iaas)                       | An n-tier workload environment using VMs and load balancers.
| [cloudbreak](../archetypes/cloudbreak)           | A workload environment hosting a Cloudbreak managed HDP Hadoop cluster.
| [sap-hana](../archetypes/sap-hana)               | A workload environment hosting an SAP HANA environment.
| [on-premises](../archetypes/on-premises)         | An Azure hosted simulated Contoso on-premises environment.
