# Deploying an Auto-Scaling Azure Virtual Machine Scale Set (VMSS) with Terraform


## This project uses Terraform to deploy an auto-scaling Azure Virtual Machine Scale Set (VMSS) and adds cost analysis with Infracost, code linting with TFLint, and security scanning with TFSec (default and custom checks), creating a repeatable workflow for secure, cost-efficient infrastructure


## Key Concepts

### **1. Azure VMSS : An Azure service that automatically deploys and scales a set of identical virtual machines.**

### **2. Infracost : CLI tool to estimate and compare cloud costs directly from Terraform plans.**

### **3. Cost Difference Report : Shows how proposed Terraform changes affect monthly cloud spend.**

### **4. TFLint : Linter that checks Terraform code for best practices, errors, and unused declarations.**

### **5. TFSec : Static analysis for Terraform to detect security and compliance issues.**


## Prerequisites

     Azure Account & Subscription with permission to create compute/network resources

     Azure CLI – for authentication and subscription management.

     Linux Environment / Terminal – to run all commands and tools

     Infracost CLI – to generate cost estimation and cost-difference reports.

     TFLint – to lint and validate Terraform code quality.

     TFSec – for security scanning, including custom policy checks.

