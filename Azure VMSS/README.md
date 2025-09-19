# Deploying an Auto-Scaling Azure Virtual Machine Scale Set (VMSS) with Terraform


## This project uses Terraform to deploy an auto-scaling Azure Virtual Machine Scale Set (VMSS) and adds cost analysis with Infracost, code linting with TFLint, and security scanning with TFSec (default and custom checks), creating a repeatable workflow for secure, cost-efficient infrastructure


## Key Concepts

### **1. Azure VMSS : An Azure service that automatically deploys and scales a set of identical virtual machines.**

### **2. Infracost : CLI tool to estimate and compare cloud costs directly from Terraform plans.**

### **3. Cost Difference Report : Shows how proposed Terraform changes affect monthly cloud spend.**

### **4. TFLint : Linter that checks Terraform code for best practices, errors, and unused declarations.**

### **5. TFSec : Static analysis for Terraform to detect security and compliance issues.**


## Prerequisites


### **1. Azure Account & Subscription with permission to create compute/network resources.**

### **2. Azure CLI – for authentication and subscription management.**

### **3. TFSec – for security scanning, including custom policy checks.**

### **4. Infracost CLI – to generate cost estimation and cost-difference reports.**

### **5. TFLint – to lint and validate Terraform code quality.**


## Steps

### a. Terraform Infrastructure


### **1. Authentication : Logged in with az login and exported service-principal credentials for Terraform.**

### **2. Code Structure: Wrote main.tf, variables.tf and outputs.tf to define**


    Azure Resource Group

    Virtual Network & Subnet

    Load Balancer

    azurerm_linux_virtual_machine_scale_set resource with auto-scaling rules
    

### **3. Execution:**

`terraform init`

`terraform plan`

`terraform apply`


<img width="1920" height="1200" alt="Screenshot from 2025-09-07 23-44-02" src="https://github.com/user-attachments/assets/44f417e4-8b11-4400-90d7-0c2785eb15e7" />



### b. Cost Estimation & Difference


### 1. Initial Estimate:

`infracost breakdown --path . --format json --out-file cost-report.json`


<img width="1920" height="1200" alt="Screenshot from 2025-09-07 23-51-41" src="https://github.com/user-attachments/assets/a132abf1-4d44-4f87-bb1c-db31459d89f2" />


### 2.Cost Diff:

`nfracost diff --path . --format json --out-file cost-diff.json`


<img width="1920" height="1200" alt="Screenshot from 2025-09-07 23-52-54" src="https://github.com/user-attachments/assets/ffb0f72f-0822-4011-bac9-9c876eca2176" />


### c. Linting


`tflint --init`

`tflint`

### Ensured Terraform code follows best practices and has no unused variables or invalid references.


<img width="1920" height="1200" alt="Screenshot from 2025-09-07 23-56-05" src="https://github.com/user-attachments/assets/3eab26b8-6b44-43ea-98cf-8c2d408d4e1c" />


### d. Security Scanning


### 1. Default Checks:

`tfsec .`

### 2. Custom Policies:

`tfsec --config-file custom-tfsec.yml .`




### Conclusion

### Terraform for infrastructure + Infracost for cost control + TFLint for quality + TFSec for security. It mirrors real-world enterprise practices and builds confidence in deploying and maintaining scalable, secure, and cost-efficient cloud environments.
