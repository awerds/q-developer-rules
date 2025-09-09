# Amazon Q Developer Rules Repository

Enterprise-grade rules and guidelines for Amazon Q Developer to ensure consistent, secure, and well-architected solutions.

## 🏗️ Structure

- **`global/`** - Enterprise-wide rules applied to all projects
- **`teams/`** - Team-specific rule overrides
- **`clients/`** - Client-specific customizations
- **`templates/`** - Rule templates for new projects
- **`scripts/`** - Deployment and management scripts

## 🚀 Quick Setup

```bash
# Clone and symlink (recommended)
git clone <this-repo> ~/q-developer-rules
ln -s ~/q-developer-rules/global ~/.aws/amazonq/rules

# Or use deployment script
./scripts/deploy.sh
```

## 📋 Rule Categories

- **Architecture** - AWS Well-Architected principles
- **Security** - Zero-trust, compliance, encryption
- **Cost Optimization** - FinOps, resource efficiency
- **Operations** - Monitoring, logging, automation
- **Development** - Coding standards, testing, CI/CD
- **MCP Integration** - Model Context Protocol servers and workflows

## 🤖 MCP Integration

**Model Context Protocol servers extend Q Developer capabilities:**

```bash
# Quick setup for AWS consulting
./scripts/install-aws-mcp-servers.sh

# Configure MCP servers
cp templates/mcp-config-template.json ~/.aws/amazonq/mcp-config.json
```

**Essential MCP servers for solo AWS consulting:**
- AWS Knowledge MCP - Official documentation and guidance
- AWS CDK MCP - Infrastructure as Code development
- Playwright MCP - UI testing and browser automation
- GitHub MCP - Repository and Git operations

See `docs/mcp-setup-guide.md` for detailed configuration.

## 🔄 Updates

Rules are version-controlled. Use feature branches for changes and PR reviews for approval.