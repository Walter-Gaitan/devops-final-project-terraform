rm ~/.kube/config
aws eks --region us-east-1 update-kubeconfig --name mern-stack-prod-eks
kubectl apply -f k8s/app.yaml