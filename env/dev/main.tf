module "resource-group-w" {
    for_each = var.resource_groups
    source = "../../modules/resource-group"
    name = each.value.name
    location = each.value.location
}
module "vertual-network-module" {
    for_each = var.vent
    source = "../../modules/vertual-network"
    name = each.value.name
    location = each.value.location
    address_space = each.value.address_space
    resource_group_name = modle.resource-group-w.var.name
}
module "subnet-module" {
    for_each = var.subnet
    source = "../../modules/subnet"
    name = each.value.name
    location = each.value.location
    address_space = each.value.address_space
    resource_group_name = modle.resource-group-w.var.name
    virtual_network_name = modle.vertual-network-module.var.name
}

