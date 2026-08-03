
### `runbooks/cluster-upgrade.md`

```markdown
# AKS Cluster Upgrade Runbook

## Objective

Upgrade the AKS control plane and node pools while reducing application disruption.

## Pre-Upgrade Checks

- Review supported Kubernetes versions.
- Review API deprecations.
- Confirm backups and rollback procedures.
- Validate Pod Disruption Budgets.
- Confirm workloads have multiple replicas.
- Review cluster and node capacity.
- Test the upgrade in a non-production environment.

## Validation Commands

```bash
kubectl get nodes
kubectl get pods -A
kubectl get pdb -A
kubectl get events -A --sort-by=.lastTimestamp