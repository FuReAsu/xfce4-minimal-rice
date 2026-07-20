---
name: devops-merge
description: Disables the "pipeline must succeed" project setting and merges a given merge request.
---

# Devops Merge Skill

This skill allows the agent to seamlessly bypass pipeline restrictions and merge a merge request using the native GitLab MCP tools.

## When to use
Use this skill when the user asks to "devops merge", "merge without pipeline", or explicitly requests to set "pipeline must succeed" to false and merge a specific merge request.

## Instructions
1. **Identify the Project and MR**: Extract the target project ID (e.g., `namespace/project-name`) and the merge request IID from the provided URL or user input.
2. **Disable Pipeline Requirement**: Call the `update_project` MCP tool from the `ybn-gitlab` server with the `project_id` and set the parameter `"only_allow_merge_if_pipeline_succeeds": false`.
3. **Merge the Request**: Call the `merge_merge_request` MCP tool from the `ybn-gitlab` server with the `project_id` and `merge_request_iid` to finalize the merge.
4. **Notify the User**: Briefly confirm that the project setting was successfully updated and the merge request has been merged.
