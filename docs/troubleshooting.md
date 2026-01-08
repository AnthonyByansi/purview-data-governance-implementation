# Troubleshooting

## Common Issues
- Authentication failures: Ensure `az login` and correct tenant/subscription context
- Missing permissions: Verify RBAC for deployment identity
- Scan failures: Check IR connectivity, firewall/IP allow lists, credentials
- Classification not applied: Confirm ruleset association and scan completion

## Diagnostics
- Review Purview insights and scan logs
- Query Log Analytics with KQL examples in `monitoring/alerts/log-analytics-queries.kql`
- Validate ARM/Bicep/Terraform deployments in Azure Activity Log

## Support Data
- Export compliance report via `scripts/powershell/Export-ComplianceReport.ps1`
- Archive deployment state and parameters for reproducibility
