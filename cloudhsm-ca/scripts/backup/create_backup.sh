#!/bin/bash
aws cloudhsmv2 create-backup --cluster-id [CLUSTER_ID]

aws cloudhsmv2 describe-backups \
    --filters clusterIds=[CLUSTER_ID] \
    --query 'Backups[*].[BackupId,CreateTimestamp,State]' \
    --output table
