
1. Create the file:

```bash
touch docs/implementation/05_key_management.md
```

2. Now, open the file with a text editor:

```bash
nano docs/implementation/05_key_management.md
```

3. In the text editor, paste the following content:

```
# 5. Key Management in CloudHSM

## 5.1 Understanding User Types and Roles
In CloudHSM, user management is crucial for security. There are distinct user types:

User Type | Purpose | Permissions
--- | --- | ---
Precrypto Officer (PRECO) | Initial setup | One-time use during initialization
Crypto Officer (CO) | User management | Create/delete users, manage policies
Crypto User (CU) | Key operations | Generate/manage keys, perform crypto operations

## 5.2 Creating and Managing Users
First, verify you're logged in as admin:
```bash
aws-cloudhsm > login --username admin --role admin --password <password>
```

Create a Crypto User:
```bash
aws-cloudhsm > user create --username <username> --role crypto-user --password <password>
```

Verify user creation:
```bash
aws-cloudhsm > user list
```

Expected output:
```json
{
  "error_code": 0,
  "data": {
    "users": [
      {
        "username": "[USERNAME]",
        "role": "crypto-user",
        "locked": "false",
        "mfa": [],
        "quorum": [],
        "cluster-coverage": "full"
      }
    ]
  }
}
```

## 5.3 Key Generation and Management

### 5.3.1 Generating Root CA Key Pair
```bash
aws-cloudhsm > key generate-asymmetric-pair rsa \
    --public-label RootCA-pub \
    --private-label RootCA-priv \
    --modulus-size-bits 2048 \
    --public-exponent 65537
```

Understanding the parameters:
- --public-label/--private-label: Memorable names for your keys
- --modulus-size-bits: 2048 is standard for Root CA
- --public-exponent: 65537 (0x10001) is the standard RSA public exponent

### 5.3.2 Key Attributes Configuration
Critical for CA operations:

Enable signing for private key:
```bash
aws-cloudhsm > key set-attribute \
    --filter key-reference=[PRIVATE_KEY_REF] \
    --name sign --value true
```

Enable verification for public key:
```bash
aws-cloudhsm > key set-attribute \
    --filter key-reference=[PUBLIC_KEY_REF] \
    --name verify --value true
```

Why these attributes matter:
- sign: Required for certificate signing operations
- verify: Needed for certificate verification
Without these, keys cannot be used for CA operations

### 5.3.3 Key Verification
List all keys:
```bash
aws-cloudhsm > key list
```

View detailed key attributes:
```bash
aws-cloudhsm > key describe --key-reference=[KEY_REF]
```

Best Practices:
- Key Labeling:
  - Use descriptive, standardized names
  - Include purpose in label
  - Consider adding date/version
- Key Management:
  - Regular key rotation schedule
  - Backup before major operations
  - Document key references and purposes
- Security Considerations:
  - Limit key access to necessary users
  - Regular audit of key attributes
  - Monitor key usage patterns
```
