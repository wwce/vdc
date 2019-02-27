## Use case 1 - subscription policy assignments

create subscription
assign roles
deploy stuff
- mouldes\policies are applied to the subscription
- module-level policy assigned to resource group
(assign additional policies later) <- option in any use case
- apply to MG

> modules\policies\managemnet-group <- sample policy,
> not applied by vdc.py but can be by policy_assignment.py
> because vdc.py doesn't create management groups today 

## User case 2 - management group policy assignment
subscription.py to create MG
subscription.py to create subscription
subscription.py to associate sub to MG
policy_assignment.py to assign policy to MG

assign roles
deploy stuff
- mouldes\policies are applied to the subscription
- module-level policy assigned to resource group
assign additional policies later
- apply to MG