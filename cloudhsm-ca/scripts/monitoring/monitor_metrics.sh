#!/bin/bash
aws cloudwatch get-metric-statistics \
    --namespace AWS/CloudHSM \
    --metric-name HsmUsage \
    --dimensions Name=ClusterId,Value=[CLUSTER_ID] \
    --start-time $(date -u -v-1H +%Y-%m-%dT%H:%M:%S) \
    --end-time $(date -u +%Y-%m-%dT%H:%M:%S) \
    --period 300 \
    --statistics Average
