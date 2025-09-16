# Technical Details

## Key Specifications
- RSA 4096-bit key pair
- External origin (BYOK)
- Sign/Verify usage pattern
- SHA-256 for wrapping

## Wrapping Process
1. Generate AES wrapping key
2. Encrypt key material with AES key
3. Encrypt AES key with KMS public key
4. Combine for import

## Security Considerations
- Key material handling
- Import token validity
- Wrapping key security
- Import process integrity
