# 2. Prerequisites

## AWS Environment Requirements
# Verify AWS CLI version
aws --version  # Required: 2.11.24 or higher

# Check AWS configuration
aws configure list

## Network Requirements
- VPC with three subnets across different AZs
- Internet connectivity for EC2 client
- Security group configurations:
  - Inbound rules: TCP 2223-2225
  - Outbound rules: All traffic

## IAM Requirements
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": [
                "cloudhsm:*",
                "ec2:*",
                "acm-pca:*"
            ],
            "Resource": "*"
        }
    ]
}

