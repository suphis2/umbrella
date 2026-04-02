
kubectl apply -f apache-testpage-configmap.yaml
cd lamp-umbrella
helm dependency update
cd ../
helm install lamp ./lamp-umbrella



