# 3. Environment Setup

## AWS Configuration
```bash
# Set default region
export AWS_DEFAULT_REGION=[REGION]

# Verify identity
aws sts get-caller-identity
```

## VPC and Networking Setup
```bash
# Verify VPC configuration
aws ec2 describe-vpcs --vpc-ids [VPC_ID]

# Verify subnet availability
aws ec2 describe-subnets     --filters "Name=vpc-id,Values=[VPC_ID]"     --query 'Subnets[*].[SubnetId,AvailabilityZone]'     --output table
```

## Security Group Configuration
Ensure your security group is configured with the following rules:

- Inbound: TCP 2223-2225 from your VPC CIDR
- Outbound: All traffic

You can verify and update your security group using the AWS CLI or Console.
