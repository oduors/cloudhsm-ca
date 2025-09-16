#!/bin/bash
openssl x509 -engine cloudhsm -req -days 3652 -in subordinate_ca.csr \
    -CAkey /tmp/root_ca_key.pem \
    -CA root_ca.crt \
    -CAcreateserial \
    -out subordinate_ca.crt \
    -extfile subordinate_ca_ext.cnf -extensions v3_ca
