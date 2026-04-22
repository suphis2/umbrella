openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout lamp.key -out lamp.crt -config openssl-san.cnf

kubectl create secret tls lamp-tls --cert=lamp.crt --key=lamp.key-n default

