
# Readme

## Configure - Post EKS cluster creation
following are one times activities

### Configure kubectl
following example assume we are using windows machine,but similar steps can be followed for other OS.
it will copy config available from terraform output for module ekscluster in <user-home

![alt text](https://github.com/polganesh/wiki-images/blob/master/terraform-examples/k8s-aws-kubectl-config.JPG)

### Configure config_map_aws_auth
- get output of config_map_aws_auth
![alt text](https://github.com/polganesh/wiki-images/blob/master/terraform-examples/config_map_aws_auth.JPG)
- store it as k8s config map yaml
- execute it
![alt text](https://github.com/polganesh/wiki-images/blob/master/terraform-examples/output-config-map-with-nodes.JPG)

### K8s Dashboard Configuration
[[Refer](https://docs.aws.amazon.com/eks/latest/userguide/dashboard-tutorial.html)]
