# Purview Data Governance Implementation

This repository provides an opinionated implementation scaffold for Microsoft Purview data governance: infrastructure-as-code (Terraform, Bicep, ARM), automation scripts (PowerShell, Python, Bash), policies (classification, scan, retention), monitoring artifacts, tests, CI/CD pipelines, and example scenarios.

## Prerequisites
- Azure subscription with permissions to create resources
- Azure CLI and authenticated session (`az login`)
- For Terraform: Terraform CLI (>= 1.5), `azurerm` provider
- For Bicep: Bicep CLI (>= v0.26)
- For ARM: ARM deployment permissions
- For scripts: PowerShell 7+, Python 3.10+, Bash (optional)

## Structure
- `docs/`: Architecture, deployment, security, troubleshooting
- `infrastructure/`: Terraform, Bicep, ARM templates
- `scripts/`: Automation for deployment, scans, RBAC, classifications
- `policies/`: Classification rules, scan rules, retention policies
- `data-sources/`: Sample data and connection configs
- `monitoring/`: Dashboards and alerts
- `tests/`: Unit and integration test scaffolding
- `ci-cd/`: GitHub Actions and Azure Pipelines stubs
- `examples/`: Scenario-focused examples

## Quick Start
- Terraform (example):
  1. `cd infrastructure/terraform`
  2. `terraform init`
  3. `terraform plan -out tfplan` (set variables as needed)
  4. `terraform apply tfplan`

- Bicep (example):
  1. `cd infrastructure/bicep`
  2. `az deployment sub create --location <region> --template-file main.bicep --parameters @parameters.json`

- ARM (example):
  1. `cd infrastructure/arm-templates`
  2. `az deployment sub create --location <region> --template-file purview-deployment.json`

## Notes
- Filenames corrected for common typos: `troubleshooting.md`, `purview.tf`, `pii-detection.json`, and `.github/` directory.
- Binary artifacts (`.pbix`, `.xlsx`) are added as empty placeholders; replace with actual files.