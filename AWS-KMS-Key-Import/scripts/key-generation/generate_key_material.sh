#!/bin/bash
# Script to generate RSA 4096-bit key material

openssl genpkey -algorithm rsa -pkeyopt rsa_keygen_bits:4096 | \
    openssl pkcs8 -topk8 -outform der -nocrypt > RSA_4096_PrivateKey.der
