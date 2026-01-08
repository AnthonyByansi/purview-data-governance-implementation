# Architecture Design

This document outlines a reference architecture for Microsoft Purview-based data governance in Azure.

## Components
- Purview Account (Catalog + Scanning)
- Data Sources: Azure SQL, Azure Storage (Blob/ADLS), On-Prem via Self-hosted IR
- Identity and Access: Azure AD, RBAC
- Automation: GitHub Actions / Azure Pipelines
- Monitoring: Azure Monitor, Log Analytics, Grafana, Power BI

## High-Level Diagram
- Purview Account centralizes metadata and classification
- Scanners connect to data sources via managed or self-hosted IR
- RBAC assigns Reader/Curator/Collection Admin roles
- CI/CD provisions infra and configures policies

## Networking
- Private endpoints (optional)
- Firewall rules for SQL and Storage
- VNET integration for runtime (if using self-hosted IR)

## Security & Compliance
- RBAC least-privilege
- Managed identities for automation
- Classification rules aligned with GDPR/Financial compliance
- Audit logs via Log Analytics
