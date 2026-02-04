# Terraform EC2 Instance Deployment

This Terraform configuration deploys an AWS EC2 instance in the Asia Pacific (Sydney) region.

## Overview

This project uses Terraform to provision and manage AWS infrastructure as code. It creates a single EC2 instance with the following specifications:

## Configuration Details

### Infrastructure
- **Provider:** AWS
- **Region:** ap-south-1 (Asia Pacific - Sydney)
- **Instance Type:** t3.micro
- **AMI:** ami-0ba8d27d35e9915fb (Amazon Linux 2023)
- **Instance Name:** terraform-ec2-instance

### Instance Details
- **Instance ID:** i-0d745017a02e63db8
- **State:** Running
- **Public IP:** 13.203.97.133
- **Private IP:** 172.31.6.206
- **Availability Zone:** ap-south-1b

## Prerequisites

- Terraform 1.5.7 or higher
- AWS CLI configured with credentials
- Valid AWS IAM user with EC2 permissions:
  - `ec2:RunInstances`
  - `ec2:DescribeInstances`
  - `ec2:TerminateInstances`
  - `ec2:StopInstances`
  - `ec2:StartInstances`

## Files

- `main.tf` - Terraform configuration file containing provider and resource definitions
- `README.md` - This file
- `.gitignore` - Git ignore rules for Terraform files

## Usage

### Initialize Terraform
```bash
terraform init
```

### View the plan (what will be created)
```bash
terraform plan
```

### Apply the configuration (create resources)
```bash
terraform apply
```

### Destroy the infrastructure (delete resources)
```bash
terraform destroy
```

## Security Notes

⚠️ **Important:** The AWS credentials are currently embedded in the configuration file. For production use, consider:
- Using AWS CLI profiles
- Using environment variables
- Using AWS SSO
- Using IAM roles for EC2 instances

## Cost Considerations

- **t3.micro** instances are eligible for AWS Free Tier (750 hours/month)
- Data transfer may incur charges
- EBS volume charges apply (8 GB by default)

## Support

For issues or questions, refer to:
- [Terraform AWS Provider Documentation](https://registry.terraform.io/providers/hashicorp/aws/latest/docs)
- [AWS EC2 Documentation](https://docs.aws.amazon.com/ec2/)

## License

This project is provided as-is for educational purposes.
