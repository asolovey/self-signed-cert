#!/bin/sh
openssl req -x509 -sha256 -new -nodes -newkey rsa:2048 -keyout rootCA.key -days 3650 -out rootCA.pem -config openssl.cnf

