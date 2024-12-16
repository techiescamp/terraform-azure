# Access AKS Cluster
 

```bash
# Get Azure Resource Group Name
resource_group_name=$(terraform output -raw resource_group_name)
```
```bash
# List Clusters
az aks list --resource-group $resource_group_name --query "[].{\"K8s cluster name\":name}" --output table
```
```bash
# Get Kubeconfig data
echo "$(terraform output kube_config)" > ./azurek8s
```
> If you see << EOT at the beginning and EOT at the end, remove these characters from the file. Otherwise, you may receive the following error message: error: error loading config file "./azurek8s": yaml: line 2: mapping values are not allowed in this context
```bash
# Export Kubeconfig data
export KUBECONFIG=./azurek8s
```
```bash
# Check the cluters access
kubectl get no
```