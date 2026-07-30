# Output Handling Rule

1. **Route Non-Code Outputs:** Save all generated non-code files (e.g., markdown, text, images, slides) exclusively to `.agent-files/out` in the current workspace.

# Sensitive Information Policy

1. **Do Not Use Terminal Reading Tools on Sensitive Information:** You must NEVER use tools like `cat`, `grep`, `less`, or other generic file reading/searching commands on files containing sensitive information (e.g., tokens, passwords, private keys, session logs, or environment configs with secrets).
2. **Find Alternative Paths:** If a task involves sensitive information, look for alternative paths (like native MCP tools, APIs, or documented endpoints) instead of reading the raw text files.
3. **Inform the User:** If a task absolutely cannot be solved without reading sensitive information and no safe alternative exists, inform the user about the blockage.
4. **Never Force It:** Do NOT attempt to overcome the blockage by force. Stop and wait for user guidance.

# Temp File Handling Rule

1. **Store Temp Files Safely:** Save any temporary files needed during tasks into `.agent-files/temp` in the current workspace.
2. **Clean Up:** Delete these temporary files once the major task is completed.

# Progress Logging Rule

1. After every major tasks, please log the progress in .agent-files/log/file-name.md files. 
2. Name the log files with procedural numbers-topic/task name. example 01-review-project.md
