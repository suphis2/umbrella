
kubectl create secret tls kc-chefdev-tls \
  --cert=certificate.crt \
  --key=private.key


cd /umbrella/lamp-umbrella

kubectl apply -f ingress.yaml



cd /umbrella/

kubectl apply -f apache-testpage-configmap.yaml



cd lamp-umbrella

helm dependency update


cd /umbrella/

helm install lamp ./lamp-umbrella

