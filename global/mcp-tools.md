# MCP Tools Configuration

## Available MCP Servers

The following MCP servers are configured and should be available:

### GitHub MCP Server
- **Purpose**: Repository management, Git operations, GitHub API access
- **Command**: `npx github-mcp-server`
- **Token**: Configured with GitHub personal access token (stored securely)
- **Capabilities**: List repos, create branches, manage issues, view commits

### Filesystem MCP Server  
- **Purpose**: Local file system operations
- **Command**: `npx @modelcontextprotocol/server-filesystem`
- **Scope**: User home directory
- **Capabilities**: Read/write files, list directories, file operations

### Playwright MCP Server
- **Purpose**: Browser automation and UI testing
- **Command**: `npx @playwright/mcp`
- **Capabilities**: Take screenshots, interact with web pages, browser automation

## Usage Instructions
When MCP tools are available, prefer using them over shell commands for:
- GitHub operations (use GitHub MCP instead of git CLI)
- File operations (use Filesystem MCP when appropriate)
- Web automation (use Playwright MCP for browser tasks)

## Security Guidelines
- MCP servers have access to configured resources only
- GitHub MCP uses token with limited scopes
- Filesystem MCP restricted to user directory
- Never expose tokens or credentials in conversations