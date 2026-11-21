# k8s-backblaze-exporter

Kubernetes Kustomization for the B2 [backblaze-prometheus-exporter](https://github.com/t0mmili/backblaze-prometheus-exporter).

## Usage

Create a secret with your Backblaze B2 credentials. The application key should
have read-only permissions on the buckets you want to monitor.

```bash
B2_APPLICATION_ID=<your-application-id>
B2_APPLICATION_KEY=<your-application-key>
kubectl create secret generic backblaze-exporter-credentials \
  --from-literal=application-key-id=$B2_APPLICATION_ID \
  --from-literal=application-key=$B2_APPLICATION_KEY
  --namespace backblaze-exporter
```
