# Terraform Three-Tier AWS Architecture Documentation

## This project automates the deployment of a scalable, secure, and highly available multi-tier web application on Amazon Web Services (AWS) using Terraform. The architecture is modular, allowing easy maintenance, customization, and reuse across different environments.

### 1. Project Overview

The objective of this project is to provision a complete web application infrastructure stack on AWS. The architecture includes:

- A Virtual Private Cloud (VPC) for network isolation
- Public and private subnets in each Availability Zone (AZ)
- Internet Gateway and NAT Gateways for controlled traffic flow
- Security groups to regulate access between tiers
- Auto Scaling Groups (ASG) with Launch Templates for web and app tiers
- Application Load Balancers (ALB) for traffic distribution
- Amazon RDS for managed relational database storage placed in private subnets

### 2. Configuration Files

a. main.tf
  - Calls all modules in the correct sequence
  - Passes shared outputs (e.g., VPC ID, subnet IDs, security group IDs) between modules

b. variables.tf
  - Declares inputs like region, instance type, CIDR ranges, etc.
  - Handles sensitive variables (e.g., database password)

c. outputs.tf
  - Exports key outputs: ALB DNS, RDS endpoint, subnet IDs
  - Sensitive outputs (e.g., DB credentials) are masked

d. terraform.tfvars
  - Provides input values such as region, AMI ID, key pair name
  - For sensitive data (e.g., db_password), prefer environment variables over hardcoding

e. providers.tf
  - Configures the AWS provider and Terraform version

### 3. Module Descriptions
a. VPC Module
  - Provisions a VPC with a specified CIDR block
  - Creates public subnets (for web tier), private app subnets, and private DB subnets in each AZ
  - Outputs: VPC ID, subnet IDs

b. Network Module
  - Deploys Internet Gateway and attaches it to the VPC
  - Creates Elastic IPs and NAT Gateways in public subnets
  - Configures route tables and associates them with subnets
  - Outputs: Gateway IDs, Route Table IDs

c. Security Module
  - Defines security groups for web, app, and database tiers
  - Web SG allows HTTP/HTTPS from anywhere
  - App SG allows traffic from web tier
  - DB SG allows traffic only from app tier
  - Outputs: Security Group IDs

e. Compute Module
  - Creates Launch Templates for EC2 instances in web and app tiers
  - Sets up Auto Scaling Groups (ASG) in the appropriate subnets
  - Creates Target Groups for ALBs
  - Outputs: Target Group ARNs

f. ALB Module
  - A public ALB for the web tier
  - A private ALB for the app tier
  - Configures listeners for HTTP and HTTPS (certificate required for HTTPS)
  - Binds target groups to listeners
  - Outputs: ALB ARNs and DNS names

g. RDS Module
  - Creates a subnet group for the DB tier
  - Deploys an RDS instance in private subnets
  - Configures DB engine, version, storage, and credentials
  - Outputs: RDS endpoint and database username (marked as sensitive)

### 4. How to use

a. Initialize Terraform
    `terraform init`
    
b. Plan the Infrastructure
   `terraform plan`
   
c. Deploy Infrastructure
    `terraform apply`

![Screenshot 2025-05-26 225738](https://github.com/user-attachments/assets/f8c5cd9c-54c8-4ef4-b831-a14df5d9d7b1)

![Screenshot 2025-05-26 225812](https://github.com/user-attachments/assets/8c0ae8d4-c559-409b-abbd-4fff7eecdcfd)


## This Terraform project sets up a production-grade, modular, and secure AWS infrastructure for a multi-tier application. With clear separation of concerns and adherence to best practices, it allows teams to automate, scale, and manage cloud resources efficiently. It’s well-suited for environments that require high availability, security, and maintainability.

  


