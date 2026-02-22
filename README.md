# Agent Solutions

Anthropic API proxy with a pinnable menu bar panel for macOS.

## Install

```
brew install aluminumio/agent-solutions/agent-solutions
```

## Usage

After installing, launch **Agent Solutions** from your Applications folder. It runs as a menu bar app.

To route traffic through the proxy, either:

- **Enable globally**: Open the menu bar panel → Settings → toggle "Enforce proxy system-wide"
- **Per-session**: Copy the launch command from the menu bar panel footer, or run:
  ```
  ANTHROPIC_BASE_URL=http://localhost:19080 claude
  ```
