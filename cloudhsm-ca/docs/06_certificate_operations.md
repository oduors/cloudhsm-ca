# 6. Certificate Operations

## 6.1 CSR Generation
Use script: `scripts/certificates/generate_csr.sh`

This creates a Certificate Signing Request using:
- CloudHSM engine
- Your private key
- Custom subject information

## 6.2 Root CA Certificate
Use script: `scripts/certificates/sign_root_ca.sh`

Creates self-signed Root CA certificate with:
- 10-year validity
- Proper CA extensions
- Required key usage flags

## 6.3 Subordinate CA
Use scripts:
1. `scripts/certificates/create_subordinate_ca.sh`
2. `scripts/certificates/sign_subordinate_ca.sh`

These scripts:
- Create ACM PCA subordinate CA
- Sign with Root CA
- Import certificate chain

## 6.4 Certificate Chain Validation
Verify the complete chain:
- Root CA self-signature
- Subordinate CA signature
- Path validation
- Extension verification

## Best Practices
1. Certificate Management
   - Regular validation
   - Expiry monitoring
   - Revocation procedures

2. Security Controls
   - Access restrictions
   - Audit logging
   - Policy compliance
