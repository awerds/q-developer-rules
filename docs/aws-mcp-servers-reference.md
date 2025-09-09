# AWS MCP Servers Reference

## Essential Servers for Solo AWS Consulting

### 🏗️ Infrastructure & Deployment

#### AWS Knowledge MCP Server
- **Package**: `@aws/aws-knowledge-mcp-server` (AWS-managed)
- **Purpose**: Official AWS documentation and best practices
- **Use Cases**: Architecture guidance, service selection, best practices
- **Setup**: No configuration required
- **Example**: "What are the security best practices for Lambda functions?"

#### AWS API MCP Server  
- **Package**: `@aws/aws-api-mcp-server`
- **Purpose**: Direct AWS service interaction via CLI
- **Use Cases**: Resource management, service operations
- **Setup**: Requires AWS credentials
- **Example**: "List my EC2 instances in us-east-1"

#### AWS CDK MCP Server
- **Package**: `@aws/aws-cdk-mcp-server` 
- **Purpose**: Infrastructure as Code with security compliance
- **Use Cases**: CDK stack generation, IaC best practices
- **Setup**: Requires Node.js and AWS CDK
- **Example**: "Generate a CDK stack for a serverless REST API"

#### AWS CloudFormation MCP Server
- **Package**: `@aws/cfn-mcp-server`
- **Purpose**: Direct CloudFormation resource management
- **Use Cases**: Template generation, stack operations
- **Setup**: AWS credentials required
- **Example**: "Create a CloudFormation template for an S3 bucket with encryption"

### 🛠️ Development Tools

#### Playwright MCP Server
- **Package**: `@playwright/mcp`
- **Purpose**: Browser automation and UI testing
- **Use Cases**: Screenshots, UI testing, web scraping
- **Setup**: Auto-installs browser dependencies
- **Example**: "Take a screenshot of https://example.com"

#### GitHub MCP Server
- **Package**: `github-mcp-server`
- **Purpose**: Repository and Git operations
- **Use Cases**: Code management, PR creation, branch operations
- **Setup**: Requires GitHub token with repo, workflow, read:org scopes
- **Example**: "Create a new branch called feature/auth"

#### Frontend MCP Server
- **Package**: `@aws/frontend-mcp-server`
- **Purpose**: React and modern web development guidance
- **Use Cases**: Component generation, best practices, optimization
- **Setup**: No additional configuration
- **Example**: "Generate a React component for user authentication"

### 💰 Cost & Operations

#### AWS Cost Explorer MCP Server
- **Package**: `@aws/cost-explorer-mcp-server`
- **Purpose**: Detailed cost analysis and reporting
- **Use Cases**: Cost optimization, budget analysis, trend identification
- **Setup**: Requires Cost Explorer API access
- **Example**: "Show me my highest cost services this month"

#### AWS Pricing MCP Server
- **Package**: `@aws/aws-pricing-mcp-server`
- **Purpose**: Pre-deployment cost estimation
- **Use Cases**: Budget planning, cost comparison, pricing research
- **Setup**: No additional configuration
- **Example**: "What would it cost to run a t3.medium EC2 instance for a month?"

#### CloudWatch MCP Server
- **Package**: `@aws/cloudwatch-mcp-server`
- **Purpose**: Monitoring and operational insights
- **Use Cases**: Metrics analysis, alarm management, log analysis
- **Setup**: Requires CloudWatch permissions
- **Example**: "Show me the CPU utilization for my Lambda functions"

### 📊 Data & Analytics (SaaS Focus)

#### DynamoDB MCP Server
- **Package**: `@aws/dynamodb-mcp-server`
- **Purpose**: NoSQL database operations
- **Use Cases**: Table management, query operations, data modeling
- **Setup**: Requires DynamoDB permissions
- **Example**: "Create a DynamoDB table for user sessions"

#### Aurora PostgreSQL MCP Server
- **Package**: `@aws/postgres-mcp-server`
- **Purpose**: Relational database operations via RDS Data API
- **Use Cases**: SQL operations, schema management, data analysis
- **Setup**: Requires RDS Data API enabled cluster
- **Example**: "Query the users table for active accounts"

#### S3 Tables MCP Server
- **Package**: `@aws/s3-tables-mcp-server`
- **Purpose**: Data lake and analytics operations
- **Use Cases**: CSV processing, metadata discovery, SQL queries
- **Setup**: Requires S3 permissions
- **Example**: "Convert this CSV file to a queryable S3 table"

## Workflow-Specific Server Combinations

### SaaS Development Stack
```json
{
  "essential": ["aws-knowledge", "aws-cdk", "playwright", "github"],
  "data": ["dynamodb", "postgres"],
  "monitoring": ["cloudwatch", "cost-explorer"]
}
```

### Client Modernization Stack  
```json
{
  "essential": ["aws-knowledge", "aws-api", "github"],
  "migration": ["cloudformation", "cost-explorer"],
  "testing": ["playwright", "frontend"]
}
```

### Rapid Prototyping Stack
```json
{
  "minimal": ["aws-knowledge", "aws-cdk", "playwright"],
  "optional": ["pricing", "frontend"]
}
```

## Installation Status

### Currently Available
- ✅ Playwright MCP Server
- ✅ GitHub MCP Server  
- ✅ Filesystem MCP Server

### AWS Servers (Check Availability)
- 🔄 AWS Knowledge MCP (AWS-managed, may require special access)
- 🔄 AWS API MCP (Check awslabs/mcp repository)
- 🔄 AWS CDK MCP (Check awslabs/mcp repository)
- 🔄 Cost Explorer MCP (Check awslabs/mcp repository)

### Installation Commands

```bash
# Install available servers
npm install -g @playwright/mcp
npm install -g github-mcp-server
npm install -g @modelcontextprotocol/server-filesystem

# Check AWS Labs repository for latest AWS MCP servers
# https://github.com/awslabs/mcp
```

## Configuration Examples

### Basic Configuration
```json
{
  "mcpServers": {
    "playwright": {
      "command": "npx",
      "args": ["@playwright/mcp"]
    },
    "github": {
      "command": "npx", 
      "args": ["github-mcp-server"],
      "env": {"GITHUB_TOKEN": "${GITHUB_TOKEN}"}
    }
  }
}
```

### Advanced Configuration with AWS Servers
```json
{
  "mcpServers": {
    "aws-knowledge": {
      "command": "npx",
      "args": ["@aws/aws-knowledge-mcp-server"]
    },
    "aws-cdk": {
      "command": "npx",
      "args": ["@aws/aws-cdk-mcp-server"],
      "env": {"AWS_REGION": "us-east-1"}
    }
  }
}
```

## Best Practices

### Server Selection
1. Start with essential servers (Knowledge, CDK, Playwright, GitHub)
2. Add specialized servers based on project needs
3. Limit to 8-10 concurrent servers for performance
4. Use local servers for development, remote for production

### Performance Optimization
- Configure appropriate timeouts (30s recommended)
- Enable retry logic for network operations
- Monitor server response times
- Use caching where appropriate

### Security Considerations
- Store credentials in environment variables
- Use IAM roles instead of access keys when possible
- Regular token rotation (90-day maximum)
- Audit server access and permissions

## Troubleshooting

### Common Issues
1. **Server not found**: Check package installation and spelling
2. **Authentication failed**: Verify credentials and permissions
3. **Timeout errors**: Increase timeout values or check network
4. **Permission denied**: Review IAM policies and token scopes

### Debug Mode
Enable detailed logging:
```json
{
  "configuration": {
    "logLevel": "debug",
    "enableTracing": true
  }
}
```

## Resources

- [AWS MCP Servers Documentation](https://awslabs.github.io/mcp/)
- [AWS Labs MCP Repository](https://github.com/awslabs/mcp)
- [Model Context Protocol Specification](https://modelcontextprotocol.io/)
- [Q Developer MCP Integration Guide](https://docs.aws.amazon.com/amazonq/)