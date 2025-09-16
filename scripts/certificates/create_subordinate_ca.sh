#!/bin/bash
aws acm-pca create-certificate-authority \
    --certificate-authority-configuration file://subordinate_ca_config.json \
    --certificate-authority-type "SUBORDINATE" \
    --tags Key=Name,Value=[ORGANIZATION]-SubordinateCA \
    --region [REGION]
