# Terraform: Launching an EC2 Instance with Networking Configurations

This Terraform configuration script will launch an EC2 instance within a VPC, subnet, and security group on AWS. The EC2 instance will be associated with a public IP address and will allow inbound SSH and HTTP traffic.

## Prerequisites
- Terraform should be installed on your machine
- AWS account and access to your AWS credentials

## Configuration details

### Providers
- AWS: The script is set up to use AWS as the provider. you need to add access_key and secret_key in the provider block, or you can use environment variables (AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY) for better security.
  
### Resources Created
- VPC: A Virtual Private Cloud (VPC) with the CIDR block 10.0.0.0/16.
- Subnet: A subnet within the VPC with the CIDR block 10.0.1.0/24 in the availability zone ap-south-1a.
- Security Group: A security group that allows inbound SSH (port 22) and HTTP (port 80) traffic from any IP (0.0.0.0/0).
- EC2 Instance: A t2.micro EC2 instance using a specified AMI, associated with the public subnet, and linked to the security group.

## Setup
Run the following commands to set up the EC2 instance using Terraform:

 1. Clone the repository
    
        git clone <repo_url>
        cd <repo_directory>
    
3. Initialize the terraform

        terraform init
        terraform plan
   
5. Apply the Configuration
   
        terraform apply

After running the above commands, Terraform will provide the details of the resource created(e.g.,instance ID, public IP).
You can also view your created resourced in AWS console.


