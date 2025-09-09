# MCP Setup Guide for AWS Consulting

## Quick Start

### 1. Install Essential AWS MCP Servers

```bash
# Core AWS servers
npm install -g @aws/mcp-server-aws-knowledge
npm install -g @aws/mcp-server-aws-api  
npm install -g @aws/mcp-server-cdk

# Development tools
npm install -g @playwright/mcp
npm install -g github-mcp-server
npm install -g @modelcontextprotocol/server-filesystem

# Optional: Cost & Analytics
npm install -g @aws/mcp-server-cost-explorer
npm install -g @aws/mcp-server-pricing
npm install -g @aws/mcp-server-frontend
```

### 2. Configure Environment Variables

```bash
# Secure credential configuration
# Use AWS credential provider chain (recommended)
aws configure set profile.mcp-profile.region us-east-1
aws configure set profile.mcp-profile.role_arn arn:aws:iam::ACCOUNT:role/MCPRole

# Or use environment variables (less secure)
# export AWS_PROFILE=mcp-profile
# export GITHUB_TOKEN=$(aws secretsmanager get-secret-value --secret-id github-token --query SecretString --output text)
```

### 3. Create MCP Configuration

Copy the template and customize:
```bash
cp templates/mcp-config-template.json ~/.aws/amazonq/mcp-config.json
```

## Server-Specific Setup

### AWS Knowledge MCP (Essential)
**Purpose**: Official AWS documentation and best practices
**Setup**: No additional configuration required (AWS-managed)
**Usage**: "What are the best practices for Lambda functions?"

### AWS API MCP (Essential) 
**Purpose**: Direct AWS service interaction
**Setup**: Requires AWS credentials
**Usage**: "List my EC2 instances" or "Create an S3 bucket"

### AWS CDK MCP (Essential)
**Purpose**: Infrastructure as Code development
**Setup**: Requires Node.js and AWS CDK installed
**Usage**: "Generate a CDK stack for a serverless API"

### Playwright MCP (Essential for UI work)
**Purpose**: Browser automation and testing
**Setup**: Automatically installs browser dependencies
**Usage**: "Take a screenshot of my website" or "Test the login flow"

### GitHub MCP (Essential)
**Purpose**: Repository and Git operations
**Setup**: Requires GitHub personal access token
**Token Scopes**: `repo`, `workflow`, `read:org`
**Usage**: "Create a new branch" or "Review recent commits"

## Workflow Examples

### SaaS Development Workflow
1. **Architecture Planning**: AWS Knowledge MCP for service selection
2. **Infrastructure**: CDK MCP for serverless backend
3. **Frontend**: Playwright MCP for UI testing
4. **Deployment**: AWS API MCP for resource management
5. **Monitoring**: Cost Explorer MCP for optimization

### Client Modernization Workflow  
1. **Assessment**: GitHub MCP for code analysis
2. **Planning**: AWS Knowledge MCP for migration strategies
3. **Implementation**: CDK MCP for new infrastructure
4. **Testing**: Playwright MCP for regression testing
5. **Cost Analysis**: Pricing MCP for budget planning

## Resources

### AWS MCP Documentation
- [AWS MCP Servers Overview](https://awslabs.github.io/mcp/)
- [Installation Guide](https://awslabs.github.io/mcp/installation)
- [Server Catalog](https://awslabs.github.io/mcp/servers/)

### Community Resources
- [MCP Protocol Documentation](https://modelcontextprotocol.io/)
- [AWS Blog: Introducing MCP Servers](https://aws.amazon.com/blogs/machine-learning/introducing-aws-mcp-servers-for-code-assistants-part-1/)
- [GitHub Repository](https://github.com/awslabs/mcp)