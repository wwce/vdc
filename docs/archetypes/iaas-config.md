### iaas deployment parameters (workload section)

These parameters are specific to the [iaas example](../archetypes/iaas/parameters/archetype.test.json) workload deployment.

| **Parameter name**            | **Type**               | **Description**                                                                                                                                                                                                                                                                                                                                     |
|-------------------------------|------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| vmapp-start-ip-address        | IPV4 Address     | IP address of first virtual machine instance. Additional instances will increment off this value.     |
| vmapp-lb-ip-address        | IPV4 Address        | IP address of the virtual machine load balancer.                        |
| vmapp-prefix": "web-app       | String           | Prefix to apply to virtual machine names    |
| sql-server-cluster-name    | String     | Name of SQL Server failover cluster.    |
| sql-server-start-ip-address        | IPV4 Address | IP address of first SQL Server instance. Additional instances will increment off this value.     |
| sql-server-ilb-ip-address        | IPV4 Address   | IP address of the SQL Server load balancer.                        |
| sql-server-cluster-ip-address        | IPV4 Address  | IP address for used by clients to connect to the SQL Server failover cluster.     |
