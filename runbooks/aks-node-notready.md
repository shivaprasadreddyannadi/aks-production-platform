# AKS Node NotReady Runbook

## Symptoms

- Pods remain in Pending or Unknown status.
- Kubernetes reports a node as `NotReady`.
- Applications lose capacity or replicas.
- Node health alerts are triggered.

## Initial Checks

```bash
kubectl get nodes -o wide
kubectl describe node <node-name>
kubectl get pods -A -o wide
kubectl get events -A --sort-by=.lastTimestamp