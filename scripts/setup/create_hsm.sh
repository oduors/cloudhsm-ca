#!/bin/bash
aws cloudhsmv2 create-hsm \
    --cluster-id [CLUSTER_ID] \
    --availability-zone [REGION]a \
    --region [REGION]
