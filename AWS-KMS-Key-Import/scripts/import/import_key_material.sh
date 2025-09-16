#!/bin/bash
# Script to import key material to KMS

aws kms import-key-material \
    --key-id $KEYID \
    --region $region \
    --encrypted-key-material fileb://EncryptedKeyMaterial.bin \
    --import-token fileb://ImportToken.bin \
    --expiration-model KEY_MATERIAL_EXPIRES \
    --valid-to $VALID_TO
