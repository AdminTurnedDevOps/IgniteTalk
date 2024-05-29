When authenticating to GCP via Terraform, you may see a message like the below.
```
Error: Post "https://container.googleapis.com/v1/projects/gold-mode-297211/locations/us-east1/clusters?alt=json&prettyPrint=false": oauth2: "invalid_grant" "Bad Request"
```

If so, run the following:

```
gcloud auth application-default revoke

gcloud auth application-default login
```