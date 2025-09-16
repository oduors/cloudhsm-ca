# 4. CloudHSM Implementation

## 4.1 Creating the Cluster
Use the script: `scripts/setup/create_cluster.sh`

This script creates a CloudHSM cluster with the following configurations:
- 7-day backup retention
- hsm2.medium type
- Across multiple subnets for high availability

## 4.2 Monitoring Cluster Creation
Use the script: `scripts/monitoring/check_cluster_health.sh`

Monitor the cluster state until it reaches the UNINITIALIZED state.

## 4.3 HSM Deployment
Use the script: `scripts/setup/create_hsm.sh`

This creates an HSM within your cluster. Choose an Availability Zone that:
- Has good connectivity to your applications
- Aligns with your disaster recovery strategy
- Provides optimal latency for your use case

## 4.4 CloudHSM Client Installation
Use the script: `scripts/setup/install_client.sh`

This script downloads and installs the CloudHSM client on your EC2 instance.

## 4.5 Cluster Activation
After client installation, activate your cluster:

```bash
sudo /opt/cloudhsm/bin/cloudhsm-cli interactive
aws-cloudhsm > cluster activate
```

IMPORTANT: Securely store the password set during activation. It cannot be recovered if lost.

