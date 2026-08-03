# HashiCorp Vault Agent Sidecar

This example demonstrates runtime secret injection using a Vault Agent sidecar.

## Runtime Flow

```text
Application Pod
├── Application container
└── Vault Agent sidecar
          |
          | Kubernetes authentication
          v
    HashiCorp Vault
          |
          v
   In-memory shared volume
          |
          v
Application reads rendered secret files