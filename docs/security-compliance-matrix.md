# Security & Compliance Matrix

| Control Area | Requirement | Implementation | Evidence |
| --- | --- | --- | --- |
| Identity & Access | Least privilege RBAC | Purview roles + Azure RBAC | Role assignment exports |
| Data Classification | GDPR/PII detection | Purview classification rules | Scan reports |
| Data Retention | Policy-based retention | Retention policy configs | Policy definitions |
| Auditing | Access and scan logs | Azure Monitor + Log Analytics | KQL queries / dashboards |
| Network Security | Restricted access | Private endpoints / firewall | NSG/Firewall configs |

Notes:
- Tailor requirements to organizational policies and regulatory framework (GDPR, SOX, HIPAA).
