rm ~/.kube/config
aws eks --region us-east-1 update-kubeconfig --name eks
kubectl apply -f k8s/app.yaml