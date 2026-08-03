variable "location" {
  description = "Azure region."
  type        = string
  default     = "centralus"
}

variable "resource_group_name" {
  description = "Resource group containing AKS."
  type        = string
  default     = "rg-aks-platform-dev-centralus"
}

variable "aks_subnet_id" {
  description = "Existing subnet ID for the AKS node pool."
  type        = string
}

variable "environment" {
  description = "Deployment environment."
  type        = string
  default     = "dev"
}