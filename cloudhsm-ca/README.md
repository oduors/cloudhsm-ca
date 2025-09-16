# Implementing Root CA in CloudHSM with ACM Private CA

This guide provides step-by-step instructions for implementing a secure Root Certificate Authority using AWS CloudHSM for key storage and AWS Certificate Manager Private CA for certificate management.

## Script Directory Structure

```
scripts/
├── setup/                  # Initial setup scripts
│   ├── create_cluster.sh
│   ├── create_hsm.sh
│   └── install_client.sh
├── key-management/         # Key operations
│   ├── generate_keys.sh
│   └── set_attributes.sh
├── certificates/          # Certificate operations
│   ├── generate_csr.sh
│   ├── sign_root_ca.sh
│   ├── create_subordinate_ca.sh
│   └── sign_subordinate_ca.sh
├── monitoring/            # Monitoring scripts
│   ├── check_cluster_health.sh
│   ├── check_client_connectivity.sh
│   └── monitor_metrics.sh
└── backup/               # Backup and recovery
    ├── create_backup.sh
    ├── restore_cluster.sh
    └── verify_backup.sh
```

## Documentation Sections

1. [Introduction](docs/01_introduction.md)
2. [Prerequisites](docs/02_prerequisites.md)
3. [Environment Setup](docs/03_environment_setup.md)
4. [CloudHSM Implementation](docs/04_cloudhsm_implementation.md)
5. [Key Management](docs/05_key_management.md)
6. [Certificate Operations](docs/06_certificate_operations.md)
7. [Troubleshooting](docs/07_troubleshooting.md)
8. [Maintenance](docs/08_maintenance.md)
9. [Backup and Recovery](docs/09_backup_recovery.md)

## Getting Started

1. Review the prerequisites in [Prerequisites](docs/02_prerequisites.md)
2. Follow the implementation guide starting with [Environment Setup](docs/03_environment_setup.md)
3. Use the provided scripts as referenced in the documentation

## Script Usage

All scripts require configuration before use. Replace placeholder values:
- [REGION]
- [CLUSTER_ID]
- [HSM_ID]
- [ENI_IP]
- etc.

## Security Note

This implementation is designed for production use with proper security controls. Ensure:
- Proper IAM permissions
- Network security
- Access controls
- Audit logging

## License

Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
