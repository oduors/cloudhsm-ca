#!/bin/bash
aws-cloudhsm > key generate-asymmetric-pair rsa \
    --public-label RootCA-pub \
    --private-label RootCA-priv \
    --modulus-size-bits 2048 \
    --public-exponent 65537
