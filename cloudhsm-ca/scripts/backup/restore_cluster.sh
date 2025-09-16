#!/bin/bash
aws cloudhsmv2 create-cluster \
    --backup-id [BACKUP_ID] \
    --hsm-type hsm2.medium \
    --subnet-ids [SUBNET_ID_1] [SUBNET_ID_2] [SUBNET_ID_3]

aws cloudhsmv2 initialize-cluster --cluster-id [NEW_CLUSTER_ID]
