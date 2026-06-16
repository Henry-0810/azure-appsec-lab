# Azure AppSec Lab

## Overview

Azure AppSec Lab is a cloud-native application security testing environment built on Microsoft Azure using Terraform.

The project demonstrates Infrastructure as Code (IaC), cloud security, web application security, API security, and DevSecOps practices by deploying intentionally vulnerable applications and validating security controls through offensive testing and remediation.

The primary objective is to simulate real-world application security assessments aligned with:

* OWASP Top 10
* OWASP API Security Top 10
* Azure Security Best Practices
* DevSecOps Security Controls

---

## Architecture

```text
Internet
    |
    v
Azure Front Door + WAF
    |
    v
Azure App Service
(OWASP Juice Shop)
    |
    +--> Azure Storage Account
    |
    +--> Azure Key Vault
    |
    v
Log Analytics Workspace
```

---

## Objectives

### Cloud Engineering

* Provision Azure resources using Terraform
* Maintain reproducible infrastructure through Infrastructure as Code
* Implement centralized logging and monitoring
* Deploy secure cloud workloads

### Application Security

* Perform web application security testing
* Perform API security testing
* Identify vulnerabilities aligned to OWASP Top 10
* Identify vulnerabilities aligned to OWASP API Top 10
* Validate remediation effectiveness through re-testing

### Cloud Security

* Evaluate Azure service configurations
* Assess identity and access management controls
* Review storage security posture
* Review secret management controls
* Implement preventative security controls

### DevSecOps

* Integrate infrastructure scanning
* Integrate application security scanning
* Implement security gates within CI/CD pipelines

---

## Technologies

### Cloud

* Microsoft Azure
* Azure App Service
* Azure Front Door WAF
* Azure Storage Account
* Azure Key Vault
* Azure Log Analytics

### Infrastructure

* Terraform

### Security

* Burp Suite Community Edition
* OWASP Juice Shop
* OWASP ZAP
* Semgrep
* Trivy
* Checkov

### Development

* VS Code Dev Containers
* Azure CLI

---

## Project Phases

### Phase 1 — Infrastructure Provisioning

* Create Resource Group
* Deploy App Service Plan
* Deploy App Service
* Deploy Storage Account
* Deploy Key Vault
* Configure Log Analytics
* Configure Front Door WAF

### Phase 2 — Application Security Testing

* Deploy OWASP Juice Shop
* Perform vulnerability discovery
* Document findings
* Implement mitigations
* Validate fixes through re-testing

### Phase 3 — DevSecOps

* Add security scanning
* Add policy checks
* Integrate CI/CD security controls

---

## Repository Structure

```text
azure-appsec-lab/
│
├── main.tf
├── variables.tf
├── outputs.tf
├── providers.tf
│
├── modules/
│   ├── app-service/
│   ├── frontdoor-waf/
│   ├── storage/
│   ├── key-vault/
│   └── logging/
│
└── README.md
```

---

## Learning Outcomes

* Azure cloud security
* Infrastructure as Code
* Web application security testing
* API security testing
* Cloud security assessments
* DevSecOps implementation
* Security control validation
* Security engineering practices
