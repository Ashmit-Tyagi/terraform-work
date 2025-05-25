# Modular-AWS-Infrastructure-with-Terraform

 A modular Terraform project to provision AWS resources such as VPC, Subnet, and EC2 instances. By organizing the infrastructure into reusable modules!

# Terraform Infrastructure Setup: VPC, Subnet, and EC2

This repository contains Terraform code to deploy AWS infrastructure resources, including **VPC**, **Subnet**, and **EC2** instances. The resources are organized into **modules** for easy management and reusability.

---

## **File Structure Breakdown**

The project is organized into modules, which are reusable and configurable. Below is the breakdown of the file structure:

---

### **1. Modules Directory**

This directory contains the individual modules responsible for creating resources. Each module is designed for a specific task, allowing you to reuse them for different environments.


#### **a. VPC Module**

- **Path**: `modules/vpc/`
- **Purpose**: This module is responsible for creating a **Virtual Private Cloud (VPC)** in AWS.
- **Key Features**:
  - Defines the CIDR block for the VPC.
  - Configures the VPC with the required network setup.
  
Files:
- `main.tf`: Contains the resource definitions for the VPC.
- `variables.tf`: Defines the input variables, like CIDR block.
- `outputs.tf`: Declares the output values, like the VPC ID.

---

#### **b. Subnet Module**

- **Path**: `modules/subnet/`
- **Purpose**: This module is responsible for creating a **Subnet** inside the VPC. It will associate the subnet with the VPC ID provided from the root module.
- **Key Features**:
  - Creates public or private subnets.
  - Associates the subnet with the specified VPC.
  
Files:
- `main.tf`: Contains the resource definitions for creating subnets.
- `variables.tf`: Defines the subnet CIDR block and VPC ID.
- `outputs.tf`: Outputs the Subnet ID.

---

#### **c. EC2 Module**

- **Path**: `modules/ec2/`
- **Purpose**: This module is responsible for launching an **EC2 instance** within the provided subnet.
- **Key Features**:
  - Allows you to specify the instance type, AMI ID, and other configurations.
  - Associates the instance with a security group.
  
Files:
- `main.tf`: Defines the EC2 instance resource.
- `variables.tf`: Input variables like AMI ID, instance type, etc.
- `outputs.tf`: Outputs the instance ID and public IP.

---

### **2. Root Module**

The root module is the entry point where we link together all the modules. It also holds configuration for the provider and handles the application of the modules.

#### **a. main.tf**

- **Path**: `main/main.tf`
- **Purpose**: This file is the entry point for Terraform configurations. It calls and links the modules (`vpc`, `subnet`, and `ec2`) to deploy the entire infrastructure.
- **Key Features**:
  - Includes `module` blocks to call each of the modules (VPC, Subnet, EC2).
  - Passes the required variables from `terraform.tfvars` to the modules.
 
#### **b. variables.tf**

   - **Path**: `main/variables.tf`
   - **Purpose**: Defines all the input variables for the entire Terraform configuration. These variables allow customization of resource attributes.
   - **Key Features**:
     - Example variables include VPC CIDR, instance type, subnet CIDR, and AMI ID.

#### **c. outputs.tf**

   - **Path**: `main/outputs.tf`
   - **Purpose**: Declares the outputs from the root module. These outputs are typically the results of the created resources like VPC ID, subnet ID, and EC2 instance ID.
   - **Key Features**:
     - Displays important information after applying the Terraform configuration.

#### **d. provider.tf**

   - **Path**: `main/provider.tf`
   - **Purpose**: Configures the AWS provider that Terraform will use to create resources in your AWS account.
   - **Key Features**:
     - Specifies the region for resources.
     - Sets up the AWS credentials.
    
#### **e. terraform.tfvars**

   - **Path**: `main/terraform.tfvars`
   - **Purpose**: Contains the actual values for the variables defined in variables.tf. This file is where you input values for the CIDR blocks, instance types, etc.
   - **Key Features**:
     - Allows for easy configuration and updating of resource settings.


