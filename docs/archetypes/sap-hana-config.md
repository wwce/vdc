
### sap-hana deployment parameters (workload section)

These parameters are specific to the [sap-hana](../archetypes/sap-hana/archetype.test.json) workload deployment.

| **Parameter name**            | **Type**               | **Description**                                                                                                                                                                                                                                                                                                                                     |
|-------------------------------|------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| iscsi-ip                      | IPV4 Address           | IP address of the iSCSI virtual storage array    |  
| iscsi-os-type                 | String                 | iSCSI virtual storage array operating system type. Allowed values: <ul><li>Windows Server 2016 Datacenter</li><li>SLES 12 SP3</li><li>SLES 12 SP3 BYOS</li><li>SLES 12 SP2</li><li>SLES 12 SP2 BYOS</li></ul>   |
| iscsi-iqn1                    | String                 | iSCSI qualified name (IQN) of first iSCSI instance.     |
| iscsi-iqn1-client1            | String                 | iSCSI qualified name (IQN) of first iSCSI instance's client1.     |
| iscsi-iqn1-client2            | String                 | iSCSI qualified name (IQN) of first iSCSI instance's client2.     |
| iscsi-iqn2                    | String                 | iSCSI qualified name (IQN) of second iSCSI instance.     |
| iscsi-iqn2-client1            | String                 | iSCSI qualified name (IQN) of second iSCSI instance's client1.     |
| iscsi-iqn2-client2            | String                 | iSCSI qualified name (IQN) of second iSCSI instance's client1.     |
| iscsi-iqn3                    | String                 | iSCSI qualified name (IQN) of third iSCSI instance.     |
| iscsi-iqn3-client1            | String                 | iSCSI qualified name (IQN) of third  iSCSI instance's client1.     |
| iscsi-iqn3-client2            | String                 | iSCSI qualified name (IQN) of third iSCSI instance's client2.     |
| nfs-lb-ip                     | IPV4 Address           | IP address of NFS load balancer.     |
| nfs-address-start             | IPV4 Address           | IP address of first NFS server instance (additional instance will iterate from this address).    |
| hana-sid                      | String                 | SAP system ID for the deployment.     |
| subscription-email            | String                 | Email address associated with your SAP account.   |
| hana-os-type                  | String                 | Hana server OS type.            |
| hana-lb-ip                    | IPV4 Address           | Hana load balancer IP address.    |
| hana-address-start            | IPV4 Address           | IP address of first Hana server instance (additional instance will iterate from this address).    |
| ascs-os-type                  | String                 | SAP Central Services (ASCS/SCS) OS type.    |
| nw-address-start              | IPV4 Address           | IP address of first NetWeaver server instance (additional instance will iterate from this address).    |
| nw-os-type                    | String                 | NetWeaver server OS type.    |
