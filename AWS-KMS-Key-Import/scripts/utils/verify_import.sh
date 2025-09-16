#!/bin/bash
# Script to verify successful key import

KEY_ID="$1"
REGION="$2"

if [ -z "$KEY_ID" ] || [ -z "$REGION" ]; then
    echo "Usage: $0 <key-id> <region>"
    exit 1
fi

aws kms describe-key --key-id "$KEY_ID" --region "$REGION" \
    --query 'KeyMetadata.[KeyId,KeyState,Origin]' \
    --output table
