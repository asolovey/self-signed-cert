#!/bin/sh
openssl req -sha256 -nodes -new -newkey rsa:2048 -keyout ssl/demo.local.test.key -out demo.local.test.csr -config openssl.cnf
openssl x509 -sha256 -req -days 3650 -in demo.local.test.csr -CA ../ca/rootCA.pem -CAkey ../ca/rootCA.key -CAcreateserial -out ssl/demo.local.test.crt -extensions v3_req -extfile openssl.cnf
rm .srl

