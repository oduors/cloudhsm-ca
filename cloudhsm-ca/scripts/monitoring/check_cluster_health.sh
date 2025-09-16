#!/bin/bash
aws cloudhsmv2 describe-clusters \
    --filters clusterIds=[CLUSTER_ID] \
    --query 'Clusters[0].Hsms[*].[HsmId,State,AvailabilityZone]' \
    --output table
