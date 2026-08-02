# AKS Production Platform

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