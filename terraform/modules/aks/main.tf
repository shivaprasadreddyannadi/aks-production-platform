resource "azurerm_kubernetes_cluster" "this" {
  name                = var.cluster_name
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = var.dns_prefix

  role_based_access_control_enabled = true
  azure_policy_enabled              = var.azure_policy_enabled
  oidc_issuer_enabled               = true
  workload_identity_enabled         = true

  sku_tier = var.sku_tier

  default_node_pool {
    name                 = var.system_node_pool_name
    vm_size              = var.system_node_vm_size
    auto_scaling_enabled = true
    min_count            = var.system_node_min_count
    max_count            = var.system_node_max_count
    os_disk_size_gb      = var.system_node_os_disk_size_gb
    type                 = "VirtualMachineScaleSets"
    vnet_subnet_id       = var.subnet_id

    node_labels = {
      workload = "system"
    }
  }

  identity {
    type = "SystemAssigned"
  }

  network_profile {
    network_plugin    = "azure"
    network_policy    = "azure"
    load_balancer_sku = "standard"
    service_cidr      = var.service_cidr
    dns_service_ip    = var.dns_service_ip
  }

  tags = var.tags
}