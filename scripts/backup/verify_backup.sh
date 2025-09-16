#!/bin/bash
aws cloudhsmv2 describe-backups \
    --filters clusterIds=[CLUSTER_ID] \
    --query 'Backups[*].[BackupId,CreateTimestamp,State]' \
    --sort-by CreateTimestamp \
    --output table
