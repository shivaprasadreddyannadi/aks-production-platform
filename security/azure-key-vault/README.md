# Azure Key Vault Runtime Secrets

This example demonstrates Azure Key Vault integration with AKS using the Secrets Store CSI Driver and Azure Workload Identity.

## Runtime Flow

```text
AKS Pod
   |
   | Federated Service Account identity
   v
Azure Workload Identity
   |
   v
Azure Key Vault
   |
   v
Secrets Store CSI Driver
   |
   v
Files mounted under /mnt/secrets-store