# Deploying an Auto-Scaling Azure Virtual Machine Scale Set (VMSS) with Terraform


## This project demonstrates Infrastructure as Code on Microsoft Azure by using Terraform to provision a Virtual Machine Scale Set (VMSS) with auto-scaling and then integrating a full cost, linting, and security pipeline in a Linux environment. After deploying the infrastructure, I estimated and compared cloud costs with Infracost, enforced coding standards with TFLint, and detected misconfigurations and policy violations using TFSec with both default and custom checks, creating a repeatable, production-style workflow for provisioning, validating, securing, and estimating the cost of scalable compute resources in Azure.


## Key Concepts

### **1. Azure VMSS : An Azure service that automatically deploys and scales a set of identical virtual machines.**

### **2. Infracost : CLI tool to estimate and compare cloud costs directly from Terraform plans.**

### **3. Cost Difference Report : Shows how proposed Terraform changes affect monthly cloud spend.**

### **4. TFLint : Linter that checks Terraform code for best practices, errors, and unused declarations.**

### **5. TFSec : Static analysis for Terraform to detect security and compliance issues.**
