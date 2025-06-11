# terraform-rds-lab
Build Your DB Server and Interact With Your DB Using an App

# Terraform AWS RDS Lab Automation

This project implements the AWS Lab: **"Build Your DB Server and Interact With Your DB Using an App"** using **Terraform**.

## Objectives

- Automate deployment of RDS MySQL Multi-AZ instance
- Configure DB Subnet Group using private subnets
- Configure Security Group allowing Web Server to access RDS
- Verify Web App can connect and use the RDS database
- Practice Infrastructure as Code (IaC) with Terraform modules

## Architecture

- VPC with public and private subnets (Lab VPC used)
- RDS DB Subnet Group in Lab private subnets
- RDS Security Group allowing traffic from Web SG
- Multi-AZ MySQL RDS Instance

## Project Structure

terraform-rds-lab/
├── main.tf
├── variables.tf
├── outputs.tf
├── terraform.tfvars
├── modules/
│ ├── vpc/
│ ├── db_subnet_group/
│ ├── db_security_group/
│ ├── rds/
├── provider.tf
└── README.md


## Usage

### Prerequisites

- AWS CLI configured with Lab credentials
- Terraform v1.6+

### Steps

1. Clone this repository
2. Update `terraform.tfvars` with:

    ```hcl
    lab_vpc_id               = "vpc-xxxxxxxxxxxxxxxxx"
    lab_private_subnet_ids   = ["subnet-xxxxxxxxxxxxxxx", "subnet-yyyyyyyyyyyyyyy"]
    web_sg_id                = "sg-xxxxxxxxxxxxxxxxx"
    db_username              = "main"
    db_password              = "lab-password"
    db_name                  = "lab"
    ```

3. Initialize Terraform:

    ```bash
    terraform init
    ```

4. Validate configuration:

    ```bash
    terraform validate
    ```

5. Plan the changes:

    ```bash
    terraform plan
    ```

6. Apply the changes:

    ```bash
    terraform apply
    ```

7. Wait for RDS to be created, copy the **RDS Endpoint** output.
8. Open Web App (provided by the Lab), use the RDS Endpoint and DB credentials to test the Address Book.

## Outputs

- `rds_endpoint` — the DNS endpoint of your RDS instance

## Notes

- The project handles AWS limitations like recreating the Subnet Group when VPC changes.
- The project uses reusable modules for each resource.
- This is a great example of using Terraform to automate Lab scenarios.

## License

MIT License — for educational purposes.

---

✅ Lab completed and verified! 🎉

