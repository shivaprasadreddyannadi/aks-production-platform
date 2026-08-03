# Runtime Secret Management

This directory demonstrates two enterprise patterns for providing secrets to Kubernetes workloads at runtime.

## Patterns

### Azure-native pattern

Azure Key Vault with:

- Secrets Store CSI Driver
- Azure Workload Identity
- Kubernetes Service Account federation
- Runtime file mounting

See [Azure Key Vault integration](azure-key-vault/README.md).

### Multi-cloud pattern

HashiCorp Vault with:

- Kubernetes authentication
- Vault Agent sidecar injection
- Shared in-memory volume
- Runtime token and secret renewal

See [HashiCorp Vault integration](hashicorp-vault/README.md).

## Security Principles

- Do not commit secret values to Git.
- Avoid long-lived credentials.
- Prefer workload identity over client secrets.
- Grant each workload only the secrets it requires.
- Mount secrets into memory-backed volumes where possible.
- Rotate secrets without rebuilding container images.
- Audit secret access centrally.