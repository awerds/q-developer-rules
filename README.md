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

## 🔄 Updates

Rules are version-controlled. Use feature branches for changes and PR reviews for approval.