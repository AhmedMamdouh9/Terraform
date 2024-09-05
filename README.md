# Terraform AWS Infrastructure Setup

This repository contains Terraform configuration files for setting up a basic AWS infrastructure. The setup includes a 
Virtual Private Cloud (VPC), an Internet Gateway, a public subnet, a route table, a security group, and an EC2 instance running NGINX HTTP Server.

## Components

1. **VPC (Virtual Private Cloud)**
   - Creates a VPC with a CIDR block of `10.0.0.0/16`.
   - DNS support and hostnames are enabled.

2. **Internet Gateway**
   - Attaches an Internet Gateway to the VPC to allow internet access.

3. **Public Subnet**
   - Creates a public subnet within the VPC with a CIDR block of `10.0.0.0/24`.
   - Automatically maps public IP addresses to instances launched in this subnet.

4. **Route Table**
   - Sets up a route table that directs all traffic (`0.0.0.0/0` and `::/0`) to the Internet Gateway.
   - Associates the route table with the public subnet.

5. **Security Group**
   - Defines a security group that allows incoming HTTP (port 80) and SSH (port 22) traffic from any IP address.
   - Allows all outbound traffic.

6. **EC2 Instance**
   - Launches an EC2 instance using the Amazon Linux 2 AMI.
   - Installs and starts the Apache HTTP Server.
   - Displays a "Hello, World" message with the instance's hostname on the web server.
