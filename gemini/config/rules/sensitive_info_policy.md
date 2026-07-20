---
name: sensitive_info_policy
description: Rule to avoid reading sensitive information directly with terminal tools.
---

# Sensitive Information Policy

1. **Do Not Use Terminal Reading Tools on Sensitive Information:** You must NEVER use tools like `cat`, `grep`, `less`, or other generic file reading/searching commands on files containing sensitive information (e.g., tokens, passwords, private keys, session logs, or environment configs with secrets).
2. **Find Alternative Paths:** If a task involves sensitive information, look for alternative paths (like native MCP tools, APIs, or documented endpoints) instead of reading the raw text files.
3. **Inform the User:** If a task absolutely cannot be solved without reading sensitive information and no safe alternative exists, inform the user about the blockage.
4. **Never Force It:** Do NOT attempt to overcome the blockage by force. Stop and wait for user guidance.
