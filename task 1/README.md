# AWS-EC2-Automation-with-Terraform

# Step 1: Install Required Tools

For Linux (Ubuntu/Debian) :

Open your terminal and run:

`sudo apt update`

`sudo apt install awscli -y`

`aws --version`

For Windows:
Install Terraform using Chocolatey:

`choco install terraform`

# Step 2: Configure AWS CLI

After installing the AWS CLI, configure it using the command below:

`aws configure`

You’ll be prompted to enter the following:

1. AWS Access Key ID
  
2. AWS Secret Access Key
   
3. Default Region Name
   
4. Default Output Format

# Step 3: Set Up Terraform Project

1. `provider.tf`	: Configures the AWS provider and sets up authentication.

2. `main.tf` : 	Contains the resource definitions (e.g., EC2 instance setup).
  
3. `variables.tf` :	Declares all input variables used in main.tf.
  
4. `terraform.tfvars`	: Specifies actual values for the variables.


# Step 4: Run Terraform Commands

1. Initialize the project:

      `terraform init`

2. Preview the execution plan:

      `terraform plan`

3. Apply the configuration to create resources:

      `terraform apply`

4. Clean up the resources when no longer needed:

      `terraform destroy`
