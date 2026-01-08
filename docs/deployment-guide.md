# Deployment Guide

This guide provides options to deploy Microsoft Purview and related resources using Terraform, Bicep, or ARM.

## Terraform
1. Navigate to `infrastructure/terraform`
2. Initialize: `terraform init`
3. Set variables in a `.tfvars` file or environment
4. Plan: `terraform plan -out tfplan`
5. Apply: `terraform apply tfplan`

## Bicep
1. Navigate to `infrastructure/bicep`
2. Update `parameters.json`
3. Deploy at subscription scope (example):
   az deployment sub create --location <region> --template-file main.bicep --parameters @parameters.json

## ARM Templates
1. Navigate to `infrastructure/arm-templates`
2. Deploy at subscription scope (example):
   az deployment sub create --location <region> --template-file purview-deployment.json

## Post-Deployment
- Assign Purview RBAC roles to required principals
- Register data sources and configure scans
- Apply classification rules and retention policies
- Validate via monitoring dashboards and alerts
