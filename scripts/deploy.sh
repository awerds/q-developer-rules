#!/bin/bash

# Amazon Q Developer Rules Deployment Script
# Deploys rules to the appropriate Q Developer directory

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(dirname "$SCRIPT_DIR")"
Q_RULES_DIR="$HOME/.aws/amazonq/rules"

echo "🚀 Deploying Amazon Q Developer Rules..."

# Create Q Developer directory if it doesn't exist
mkdir -p "$HOME/.aws/amazonq"

# Remove existing rules directory if it exists
if [ -L "$Q_RULES_DIR" ]; then
    echo "📝 Removing existing symlink..."
    rm "$Q_RULES_DIR"
elif [ -d "$Q_RULES_DIR" ]; then
    echo "📝 Backing up existing rules directory..."
    mv "$Q_RULES_DIR" "$Q_RULES_DIR.backup.$(date +%Y%m%d_%H%M%S)"
fi

# Create symlink to global rules
echo "🔗 Creating symlink to global rules..."
ln -s "$REPO_ROOT/global" "$Q_RULES_DIR"

echo "✅ Deployment complete!"
echo "📍 Rules location: $Q_RULES_DIR"
echo "🔄 To update rules: git pull in $REPO_ROOT"

# Validate deployment
if [ -L "$Q_RULES_DIR" ] && [ -d "$Q_RULES_DIR" ]; then
    echo "✅ Validation successful - rules are active"
    echo "📋 Available rules:"
    ls -la "$Q_RULES_DIR"
else
    echo "❌ Validation failed - please check the deployment"
    exit 1
fi