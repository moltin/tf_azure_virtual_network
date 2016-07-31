resource "azurerm_virtual_network" "mod" {
    name = "${var.name}"
    location = "${var.location}"
    resource_group_name = "${var.resource_group_name}"
    address_space = ["${split(",", var.address_space)}"]
}
