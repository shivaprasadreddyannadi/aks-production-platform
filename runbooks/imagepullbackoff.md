
### `runbooks/imagepullbackoff.md`

```markdown
# ImagePullBackOff Runbook

## Symptoms

- Pods remain in `ImagePullBackOff`.
- Kubernetes cannot download the container image.

## Investigation

```bash
kubectl describe pod <pod-name> -n <namespace>
kubectl get events -n <namespace> --sort-by=.lastTimestamp