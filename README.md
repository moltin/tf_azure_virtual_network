# Virtual Network Terraform module

A Terraform module to provide a Virtual Network on Microsoft Azure.

# Setup

- `name` - The name of the virtual network.
- `location` - The location/region where the virtual network is created.
- `resource_group_name` - The name of the resource group in which to create the virtual network.
- `address_space` - The address space that is used the virtual network.

# Run

```js
module "virtual_network" {
    source = "github.com/moltin/tf_azure_virtual_network"

    name = "${var.app_name}_${var.virtual_network_name}"
    location = "${var.location}"
    resource_group_name = "${module.resource_group.name}"
    address_space =  "${var.address_space}"
}
```

## Outputs

 - `id` - The virtual NetworkConfiguration ID.
 - `name` - The name of the virtual network.
