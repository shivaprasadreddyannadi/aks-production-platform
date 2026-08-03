# AKS Production Platform

[![Platform Validation](https://github.com/shivaprasadreddyannadi/aks-production-platform/actions/workflows/platform-validation.yml/badge.svg)](https://github.com/shivaprasadreddyannadi/aks-production-platform/actions/workflows/platform-validation.yml)

![Terraform](https://img.shields.io/badge/Terraform-1.15+-844FBA?logo=terraform&logoColor=white)
![Kubernetes](https://img.shields.io/badge/Kubernetes-Platform-326CE5?logo=kubernetes&logoColor=white)
![Helm](https://img.shields.io/badge/Helm-Chart-0F1689?logo=helm&logoColor=white)


Production-style Azure Kubernetes Service platform design built with Terraform, Kubernetes manifests, Helm, GitHub Actions, security controls, observability, and operational documentation.

## Purpose

This repository demonstrates how a platform engineering team can design and maintain a secure, scalable, and reusable AKS platform.

The project is designed for portfolio and architecture demonstration. It does not require an active Azure subscription for formatting, validation, documentation, Kubernetes manifest checks, Helm linting, or CI workflow execution.

## Planned Capabilities

- Reusable Terraform AKS module
- Development environment configuration
- Managed identity integration
- Kubernetes namespaces
- Resource requests and limits
- Readiness and liveness probes
- Horizontal Pod Autoscaler
- Pod Disruption Budget
- Network Policies
- Helm application packaging
- Prometheus and Grafana configuration
- GitHub Actions validation
- Security and operational documentation
## Roadmap

- [x] Initialize repository structure
- [x] Add reusable Terraform AKS module
- [x] Add development environment
- [x] Add Kubernetes base manifests
- [x] Add production-style Helm chart
- [x] Add autoscaling and availability controls
- [x] Add Network Policies
- [x] Add automated platform validation
- [x] Add runtime secret-management patterns
- [ ] Add monitoring configuration
- [ ] Add architecture documentation
- [ ] Add operational runbooks


## Repository Structure

```text
aks-production-platform/
├── .github/
│   └── workflows/
├── architecture/
├── docs/
├── examples/
├── helm/
│   └── platform-app/
├── kubernetes/
│   ├── base/
│   └── overlays/
├── monitoring/
├── scripts/
├── terraform/
│   ├── environments/
│   └── modules/
├── .gitignore
└── README.md

## Implemented Capabilities

- AKS cluster configuration using reusable Terraform
- System node pool with autoscaling
- Azure RBAC, OIDC issuer and workload identity
- Kubernetes Deployment and ClusterIP Service
- CPU-based Horizontal Pod Autoscaler
- Pod Disruption Budget
- Resource requests and limits
- Readiness and liveness probes
- Restricted container security context
- Kubernetes Network Policy
- Reusable Helm chart with development overrides
- Automated Terraform, Kubernetes and Helm validation
- Validation without requiring an Azure subscription