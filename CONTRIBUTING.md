## Secure Development Governance — Branching Strategy

The following defines our mandated Gitflow branching strategy for secure development governance. This file documents expectations for feature development, hotfixes, and releases.

```markdown
## Branching Strategy: Gitflow Workflow

We use the Gitflow model to manage our development lifecycle. All feature development must be done against the 'develop' branch.

**Feature Branches:** Branch from `develop`. Merge back to `develop` via Pull Request.
**Hotfixes:** Branch from `main`. Merge to `main`, then merge immediately to `develop`.

No direct pushes to 'main' or 'develop' are allowed.
```

Please follow these rules when contributing. If you need an exception (emergency hotfix with org approval), open an issue describing the reason and obtain an explicit approval before bypassing the rules.

## Code Review

All changes require at least one code review before merging to `main` or `develop`.

## Testing

Please ensure:
- Scripts are tested before submission
- Documentation is updated to reflect changes
- Security implications are considered

## Reporting Issues

Please check existing issues before opening a new one. Include:
- Description of the issue
- Steps to reproduce (if applicable)
- Environment details (OS, Perl version, etc.)
