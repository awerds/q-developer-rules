#!/bin/bash

# AWS MCP Servers Installation Script
# For solo AWS consulting and SaaS development

set -e

echo "🚀 Installing AWS MCP Servers for Q Developer..."

# Essential AWS MCP Servers
echo "📦 Installing essential AWS MCP servers..."

# Note: Using placeholder package names - actual AWS MCP servers may have different names
# Check https://awslabs.github.io/mcp/ for current package names

echo "Installing AWS Knowledge MCP Server..."
npm install -g @aws/aws-knowledge-mcp-server 2>/dev/null || echo "⚠️  AWS Knowledge MCP not yet available via npm"

echo "Installing AWS API MCP Server..."
npm install -g @aws/aws-api-mcp-server 2>/dev/null || echo "⚠️  AWS API MCP not yet available via npm"

echo "Installing AWS CDK MCP Server..."
npm install -g @aws/aws-cdk-mcp-server 2>/dev/null || echo "⚠️  AWS CDK MCP not yet available via npm"

# Development Tools (already installed)
echo "📱 Installing development MCP servers..."

echo "Installing Playwright MCP Server..."
npm install -g @playwright/mcp

echo "Installing GitHub MCP Server..."
npm install -g github-mcp-server

echo "Installing Filesystem MCP Server..."
npm install -g @modelcontextprotocol/server-filesystem

# Optional servers for advanced workflows
echo "💰 Installing optional cost & analytics servers..."

echo "Installing AWS Cost Explorer MCP Server..."
npm install -g @aws/cost-explorer-mcp-server 2>/dev/null || echo "⚠️  Cost Explorer MCP not yet available via npm"

echo "Installing AWS Pricing MCP Server..."
npm install -g @aws/aws-pricing-mcp-server 2>/dev/null || echo "⚠️  Pricing MCP not yet available via npm"

echo "Installing Frontend MCP Server..."
npm install -g @aws/frontend-mcp-server 2>/dev/null || echo "⚠️  Frontend MCP not yet available via npm"

# Database servers for SaaS projects
echo "🗄️  Installing database MCP servers..."

echo "Installing DynamoDB MCP Server..."
npm install -g @aws/dynamodb-mcp-server 2>/dev/null || echo "⚠️  DynamoDB MCP not yet available via npm"

echo "Installing Aurora PostgreSQL MCP Server..."
npm install -g @aws/postgres-mcp-server 2>/dev/null || echo "⚠️  PostgreSQL MCP not yet available via npm"

echo ""
echo "✅ MCP Server installation complete!"
echo ""
echo "📋 Next steps:"
echo "1. Set up environment variables (GITHUB_TOKEN, AWS credentials)"
echo "2. Copy and customize MCP configuration template"
echo "3. Restart your IDE to load the new servers"
echo ""
echo "📖 See docs/mcp-setup-guide.md for detailed configuration instructions"