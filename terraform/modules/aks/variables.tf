variable "cluster_name" {
  description = "Name of the AKS cluster."
  type        = string
}

variable "location" {
  description = "Azure region for the AKS cluster."
  type        = string
}

variable "resource_group_name" {
  description = "Resource group containing the AKS cluster."
  type        = string
}

variable "dns_prefix" {
  description = "DNS prefix used by the AKS cluster."
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID used by the AKS system node pool."
  type        = string
}

variable "system_node_pool_name" {
  description = "Name of the AKS system node pool."
  type        = string
  default     = "system"
}

variable "system_node_vm_size" {
  description = "Virtual machine size for system nodes."
  type        = string
  default     = "Standard_D2s_v5"
}

variable "system_node_min_count" {
  description = "Minimum number of system nodes."
  type        = number
  default     = 2

  validation {
    condition     = var.system_node_min_count >= 1
    error_message = "The system node pool must contain at least one node."
  }
}

variable "system_node_max_count" {
  description = "Maximum number of system nodes."
  type        = number
  default     = 3

  validation {
    condition     = var.system_node_max_count >= var.system_node_min_count
    error_message = "The maximum node count must be greater than or equal to the minimum."
  }
}

variable "system_node_os_disk_size_gb" {
  description = "Operating-system disk size for system nodes."
  type        = number
  default     = 64
}

variable "service_cidr" {
  description = "CIDR used for Kubernetes services."
  type        = string
  default     = "10.240.0.0/16"
}

variable "dns_service_ip" {
  description = "IP address used by the Kubernetes DNS service."
  type        = string
  default     = "10.240.0.10"
}

variable "azure_policy_enabled" {
  description = "Enable the Azure Policy add-on."
  type        = bool
  default     = true
}

variable "sku_tier" {
  description = "AKS SKU tier."
  type        = string
  default     = "Free"

  validation {
    condition     = contains(["Free", "Standard", "Premium"], var.sku_tier)
    error_message = "The SKU tier must be Free, Standard, or Premium."
  }
}

variable "tags" {
  description = "Tags assigned to the AKS cluster."
  type        = map(string)
  default     = {}
}