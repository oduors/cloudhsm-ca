#!/bin/bash
aws-cloudhsm > key set-attribute \
    --filter key-reference=[PRIVATE_KEY_REF] \
    --name sign --value true

aws-cloudhsm > key set-attribute \
    --filter key-reference=[PUBLIC_KEY_REF] \
    --name verify --value true
