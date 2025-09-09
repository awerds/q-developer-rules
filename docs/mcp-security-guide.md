# MCP Security Guide

## IAM Permissions Required

### AWS Knowledge MCP Server
**Minimum IAM Permissions:**
```json
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": [
        "docs:GetDocuments",
        "docs:SearchDocuments"
      ],
      "Resource": "*"
    }
  ]
}
```

### AWS API MCP Server
**Minimum IAM Permissions:**
```json
{
  "Version": "2012-10-17", 
  "Statement": [
    {
      "Effect": "Allow",
      "Action": [
        "ec2:DescribeInstances",
        "s3:ListBuckets",
        "lambda:ListFunctions",
        "iam:ListRoles"
      ],
      "Resource": "*"
    }
  ]
}
```

### AWS CDK MCP Server
**Minimum IAM Permissions:**
```json
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow", 
      "Action": [
        "cloudformation:*",
        "s3:*",
        "iam:*",
        "lambda:*"
      ],
      "Resource": "*"
    }
  ]
}
```

## Credential Security Best Practices

### 1. Use IAM Roles (Recommended)
```bash
# Configure AWS CLI with IAM role
aws configure set role_arn arn:aws:iam::ACCOUNT:role/MCPRole
aws configure set source_profile default
```

### 2. Environment Variables (Secure)
```bash
# Set in shell profile, not in scripts
export AWS_PROFILE=mcp-profile
export GITHUB_TOKEN=$(aws secretsmanager get-secret-value --secret-id github-token --query SecretString --output text)
```

### 3. AWS Credential Provider Chain
Order of credential resolution:
1. Environment variables
2. AWS credentials file
3. IAM roles for EC2 instances
4. IAM roles for containers

## Security Boundaries

### Network Security
- MCP servers run locally, no inbound network access required
- Outbound HTTPS (443) access needed for AWS APIs
- GitHub API access (api.github.com:443)

### Data Protection
- Credentials never logged or stored in plain text
- All API communications use TLS 1.2+
- Local file access limited to specified directories

### Access Control
- Each MCP server runs with minimal required permissions
- No cross-server data sharing
- Isolated execution environments

## Version Management Security

### Pin Specific Versions
```json
{
  "args": ["@aws/mcp-server-cdk@1.2.3"]
}
```

### Verify Package Integrity
```bash
# Check package signatures before installation
npm audit @aws/mcp-server-cdk
```

### Update Strategy
1. Test updates in development environment
2. Review changelog for security fixes
3. Update production after validation

## Monitoring and Auditing

### Log Security Events
```json
{
  "configuration": {
    "logLevel": "info",
    "auditLog": true,
    "sensitiveDataRedaction": true
  }
}
```

### Regular Security Reviews
- Monthly credential rotation
- Quarterly permission audits
- Annual security assessments

## Incident Response

### Credential Compromise
1. Immediately revoke compromised credentials
2. Generate new credentials
3. Update MCP configurations
4. Review access logs

### Unauthorized Access
1. Disable affected MCP servers
2. Review IAM policies
3. Check for privilege escalation
4. Update security configurations