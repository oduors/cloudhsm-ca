#!/bin/bash
nc -vz [ENI_IP] 2223-2225

aws ec2 describe-security-groups \
    --group-ids [SG_ID] \
    --query 'SecurityGroups[0].IpPermissions'
