
### `runbooks/crashloopbackoff.md`

```markdown
# CrashLoopBackOff Runbook

## Symptoms

- A pod repeatedly starts and crashes.
- Restart count continuously increases.
- The pod shows `CrashLoopBackOff`.

## Investigation

```bash
kubectl get pods -n <namespace>
kubectl describe pod <pod-name> -n <namespace>
kubectl logs <pod-name> -n <namespace>
kubectl logs <pod-name> -n <namespace> --previous