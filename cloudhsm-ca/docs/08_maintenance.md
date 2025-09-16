# 8. Operational Maintenance and Production Support

## 8.1 Regular Maintenance Procedures

### 8.1.1 Daily Checks
Use script: `scripts/monitoring/check_cluster_health.sh`

This script performs:
1. HSM Health Check
2. Client Connectivity Verification
3. Backup Status Check

### 8.1.2 Weekly Tasks
1. Certificate Chain Verification:
   ```bash
   openssl x509 -in root_ca.crt -text -noout
   aws acm-pca describe-certificate-authority --certificate-authority-arn [SUBORDINATE_CA_ARN]
   ```

2. Key Usage Audit:
   ```bash
   aws-cloudhsm > key list-attributes --filter key-label=RootCA* --output-format detailed
   ```

## 8.2 Scaling and Performance Management

### 8.2.1 Performance Monitoring
Use script: `scripts/monitoring/monitor_metrics.sh`

This script creates a CloudWatch dashboard for:
- HSM Usage
- Integrity Check Status
- Operation Latency

### 8.2.2 Capacity Planning
Monitor these thresholds:
- Key storage utilization: < 80%
- Operation latency: < 100ms
- Session count: < 2000 per HSM

## 8.3 Security Compliance

### 8.3.1 Regular Compliance Checks
1. Security Group Audit:
   ```bash
   aws ec2 describe-security-group-rules --filters Name=group-id,Values=[SG_ID] --query 'SecurityGroupRules[*].[IpProtocol,FromPort,ToPort,CidrIpv4]'
   ```

2. IAM Policy Review:
   ```bash
   aws iam get-policy-version --policy-arn [POLICY_ARN] --version-id [VERSION_ID]
   ```

### 8.3.2 Access Control Review
```bash
aws-cloudhsm > user list
aws-cloudhsm > key list --output-format detailed
```

## 8.4 Incident Response
For HSM failures or client connection issues, refer to the troubleshooting guide and use the provided scripts.

