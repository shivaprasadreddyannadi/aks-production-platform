# AKS Operational Runbooks

This directory contains practical runbooks for diagnosing and resolving common AKS and Kubernetes production incidents.

## Available Runbooks

- [AKS Node NotReady](aks-node-notready.md)
- [CrashLoopBackOff](crashloopbackoff.md)
- [ImagePullBackOff](imagepullbackoff.md)
- [OOMKilled](oomkilled.md)
- [AKS Cluster Upgrade](cluster-upgrade.md)

## Operating Principles

- Confirm business impact before making changes.
- Collect logs and events before restarting workloads.
- Prefer controlled remediation over manual production changes.
- Validate service health after every recovery action.
- Record the root cause and preventive actions.