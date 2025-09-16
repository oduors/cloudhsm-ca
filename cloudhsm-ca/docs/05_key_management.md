# 5. Key Management in CloudHSM

## 5.1 User Types and Roles
CloudHSM user hierarchy:

| User Type | Purpose | Permissions |
|-----------|---------|-------------|
| Precrypto Officer (PRECO) | Initial setup | One-time use during initialization |
| Crypto Officer (CO) | User management | Create/delete users, manage policies |
| Crypto User (CU) | Key operations | Generate/manage keys, perform crypto operations |

## 5.2 User Management
Use the following scripts in order:

1. Create Users: `scripts/key-management/generate_keys.sh`
2. Set Attributes: `scripts/key-management/set_attributes.sh`

## 5.3 Key Operations

### Generate Root CA Key Pair
The script `scripts/key-management/generate_keys.sh` creates:
- RSA-2048 key pair
- Public key labeled as RootCA-pub
- Private key labeled as RootCA-priv

### Configure Key Attributes
Use `scripts/key-management/set_attributes.sh` to:
- Enable signing for private key
- Enable verification for public key

### Key Management Best Practices
1. Key Labeling
   - Use descriptive names
   - Include purpose and version
   - Follow naming conventions

2. Security Controls
   - Regular key rotation
   - Audit key access
   - Monitor usage patterns

3. Backup Procedures
   - Regular backups
   - Test key restoration
   - Document key references
