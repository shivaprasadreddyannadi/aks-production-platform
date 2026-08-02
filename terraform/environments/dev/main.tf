locals {
  common_tags = {
    Environment = var.environment
    Application = "aks-platform"
    Owner       = "cloud-platform-team"
    ManagedBy   = "terraform"
  }
}

module "aks" {
  source = "../../modules/aks"

  cluster_name        = "aks-platform-${var.environment}-${var.location}"
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = "aks-platform-${var.environment}"
  subnet_id           = var.aks_subnet_id

  system_node_pool_name = "system"
  system_node_vm_size   = "Standard_D2s_v5"
  system_node_min_count = 2
  system_node_max_count = 3

  azure_policy_enabled = true
  sku_tier             = "Free"

  tags = local.common_tags
}