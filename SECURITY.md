# Security Policy

Security.md — AWS Patch Manager Control

1) Policy Statement
RMSS & vTechUB require timely, consistent, and auditable patch management for all compute assets.
We use AWS Systems Manager (SSM) Patch Manager as the authoritative control to assess patch compliance and
remediate vulnerabilities across AWS and hybrid hosts. This policy enforces least privilege, change control, traceability,
and measurable SLAs for patching.


# Product Owner 
Organisation: RM Smart System Solutions (RMSS) & vTechUB
Version: 1.0 · 

Effective: 11 Aug 204 · Owner: Head of Cloud Security (RMSS) · Review: Quarterly


## Supported Versions

Use this section to tell people about which versions of your project are
Currently being supported with security updates.

| Version | Supported          |
| ------- | ------------------ |
| 5.1.x   | :white_check_mark: |
| 5.0.x   | :x:                |
| 4.0.x   | :white_check_mark: |
| < 4.0   | :x:                |

# Reporting a Vulnerability


# Scope 
Assets: EC2, on-prem/other-cloud managed instances via SSM Hybrid Activations, AWS-managed OS images (Amazon Linux 2/2023, Ubuntu LTS, RHEL, Windows Server), and approved AMI pipelines.

# Environments: #Prod, #Staging, #Dev, #Sandbox.

Accounts/Regions: All AWS Organization accounts under RMSS/vTechUB.

Exclusions: Serverless/container patching is governed separately (see §10), but base images fall under this policy.

# Roles & Responsibilities (RACI)
Policy Owner (Security): Defines standards, risk acceptance, and metrics (A/R).
Cloud Platform Team: Designs baselines, windows, automation; operates dashboards (R).
Service Owners: Approve maintenance windows, test/rollback plans; own exceptions (A/R).
ITSM/CAB: Reviews change requests and emergency patches (C/A).
Audit/Compliance: Evidence collection and control testing (C).
Engineers / Vendors: Execute pre/post checks; fix failed patches (R).

# Patch SLAs (from vendor release or vulnerability publication)
Critical / Zero-Day (exploited or CVSS ≥ 9.0): ≤ 72 hours (Emergency path allowed).
High (CVSS 7.0–8.9): ≤ 14 days.
Medium (CVSS 4.0–6.9): ≤ 30 days.
Low (CVSS < 4.0): ≤ 60 days.
Missed SLAs require a documented Risk Acceptance approved by Security (§11).
