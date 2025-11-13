
kubectl create secret tls kc-chefdev-tls \
  --cert=certificate.crt \
  --key=private.key


cd lamp-umbrella

kubectl apply -f ingress.yaml



cd ../

kubectl apply -f apache-testpage-configmap.yaml



cd lamp-umbrella

helm dependency update


cd ../

helm install lamp ./lamp-umbrella


lamp-umbrella/
├── Chart.yaml
├── values.yaml
├── templates/
│   └── ingress.yaml
└── charts/
    ├── apache/
    │   ├── Chart.yaml
    │   ├── values.yaml
    │   └── templates/
    │       ├── deployment.yaml
    │       └── service.yaml
    ├── php/
    │   ├── Chart.yaml
    │   ├── values.yaml
    │   └── templates/
    │       ├── deployment.yaml
    │       └── service.yaml
    └── mysql/
        ├── Chart.yaml
        ├── values.yaml
        └── templates/
            ├── deployment.yaml
            ├── service.yaml
            └── pvc.yaml
