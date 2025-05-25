# Multi-Env-Aws-infra

### In this project, Terraform is used to provision and manage infrastructure across multiple environments — development (dev), testing (test), and production (prod). The setup follows a modular architecture, where each component of the infrastructure (such as EC2, VPC, Subnets, etc.) is defined in separate, reusable modules. This modular structure improves code organization, simplifies maintenance, and makes it easier to scale the infrastructure as new resources or environments are introduced. ###

### Each environment (dev, test, prod) is structured with the following essential Terraform configuration files, ensuring consistency, reusability, and clarity across deployments: ###


### Environment Folder: dev ###

The dev folder contains the Terraform configuration tailored for the development environment. It specifies how various modules (such as VPC, EC2, etc.) are implemented and configured using values unique to the development setup.


# a. main.tf
Defines the core infrastructure by referencing reusable modules (e.g., VPC, Subnet, EC2). It serves as the main blueprint outlining the resources and their interdependencies.

# b. variables.tf
Declares all input variables required by the configuration. This file enables flexibility and helps in parameterizing the infrastructure setup.

# c. terraform.tfvars
Provides specific values for the variables declared in variables.tf. Each environment has its own .tfvars file to reflect environment-specific configurations.

# d. backend.tf
Configures the remote backend (commonly S3) used for storing the Terraform state. This setup supports centralized, secure, and consistent state management across teams and environments.

# e. output.tf
Defines output values like VPC ID, Subnet ID, or EC2 instance IPs. These outputs are useful for logging, debugging, or integration with other Terraform stacks.

# f. local.tf
Contains locally scoped values such as environment name, project name. This helps reduce repetition and enables the construction of dynamic resource names and labels.


### Modules Folder: modules ###


This folder contains reusable Terraform modules, each housed in its own subfolder. Every module is responsible for managing a specific AWS resource or component. These modules can be invoked from any environment folder (such as dev, test, or prod), which helps eliminate code duplication and promotes consistency.

# Subfolders inside modules/: #


# 1. ec2/: #
Manages the creation of EC2 instances. It accepts parameters like AMI ID, instance type, key pair name, subnet ID, and instance tags. 


# 2. eip/: #
Handles Elastic IP addresses, which are static public IPs that can be associated with EC2 instances. 


# 3. igw/: #
Creates an Internet Gateway, enabling public subnets to have internet access. 


# 4. nat/: #
Creates a NAT Gateway, allowing instances in private subnets to access the internet (for tasks like package installation) without exposing them publicly. 


# 5. s3/: #
Sets up S3 buckets for purposes such as storing logs, Terraform state files, or application data. 


# 6. sg/: #
Manages security groups and their rules, controlling inbound and outbound traffic for EC2 instances and other AWS resources. 


# 7. subnet/: #
Creates subnets within a VPC, which can be public or private, defined by CIDR blocks and availability zones. 


# 8. vpc/: #
Creates the Virtual Private Cloud (VPC), which forms the foundation of the AWS network setup. Other resources like subnets, EC2 instances, and gateways are deployed within the VPC. 
