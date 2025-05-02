# Crispyfish Tech Terraform Tutorials

This repository is part of the Crispyfish Tech Terraform tutorials. It contains example Terraform configurations that you can follow along with to learn the basics of Terraform, including resource creation, planning, and applying changes locally.

## Repository Structure

- **terraform-init-and-plan/**
  - Contains a simple example (`main.tf`) demonstrating how to initialize a Terraform project and create a local file resource.

- **terraform-resources/**
  - Contains a more advanced example (`main.tf`) that manages multiple local files and demonstrates resource dependencies.
  - Includes example output files (`firstfile.txt`, `secondfile.txt`), Terraform state files (`terraform.tfstate`, `terraform.tfstate.backup`), and a sample plan file (`tfplan`).

## How to Use

1. **Choose a Tutorial**
   - Start with `terraform-init-and-plan` for the basics, then move to `terraform-resources` for more advanced examples.

2. **Initialize Terraform**
   - Open a terminal in the desired directory and run:
     ```pwsh
     terraform init
     ```

3. **Plan and Apply**
   - To see what Terraform will do:
     ```pwsh
     terraform plan
     ```
   - To apply the configuration and create resources:
     ```pwsh
     terraform apply
     ```

## Notes

- These examples are for learning and demonstration purposes only.
- Do not store sensitive information in this repository.
- State and plan files are included for reference but are typically ignored in production repositories.

## License

See [LICENSE](LICENSE) for license information.
