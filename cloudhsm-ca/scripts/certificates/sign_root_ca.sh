#!/bin/bash
openssl x509 -engine cloudhsm -req -days 3652 -in root_ca.csr \
    -signkey [PRIVATE_KEY_REF] \
    -out root_ca.crt \
    -extensions v3_ca -extfile root_ca.cnf
