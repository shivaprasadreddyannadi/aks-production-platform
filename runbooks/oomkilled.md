
### `runbooks/oomkilled.md`

```markdown
# OOMKilled Runbook

## Symptoms

- A container restarts with exit code `137`.
- Pod status reports `OOMKilled`.
- Memory usage approaches the configured limit.

## Investigation

```bash
kubectl describe pod <pod-name> -n <namespace>
kubectl logs <pod-name> -n <namespace> --previous
kubectl top pod <pod-name> -n <namespace>