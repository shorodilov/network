Local Network Infrastructure as Code
===============================================================================

This repository contains Terraform configuration for managing a local home
network using the Unifi Controller API on an Ubiquiti Dream Machine Pro.

## Overview

This project uses Infrastructure as Code (IaC) principles to automate the
configuration and management of an Unifi-based local network.
By using Terraform, network configurations can be version-controlled, easily
replicated, and systematically applied.

## Project Goals

- Automate network infrastructure management using Terraform
- Implement network segmentation with VLANs for different use cases
- Provide secure Wi-Fi access with appropriate isolation
- Maintain a consistent network configuration through version control
- Simplify deployment and updates of network changes

## Requirements

- Terraform ~> 1.6
- Ubiquiti Dream Machine Pro with UniFi OS
- Terraform Cloud account (for remote state)
- UniFi Access Points

### Provider

This project uses the
[Unifi Provider](https://registry.terraform.io/providers/ubiquiti-community/unifi)
from the Ubiquiti community:

- ubiquiti-community/unifi (>= 0.41.2)

### Terraform Cloud

This project leverages Terraform Cloud for:

- Remote state management and state locking
- Secure storage of sensitive variables
- Consistent execution environment
- Version control integration
- Team collaboration capabilities

## Configuration

### Variables

The project uses variables for configuration, including:

- API connection details
- Network configuration parameters
- Wi-Fi network settings
- ... etc.

All sensitive variables are marked as sensitive in Terraform and
should be managed securely.

### Authentication

The project uses local authentication with the Unifi Controller.
It's recommended to:

- Create a dedicated user for Terraform with appropriate permissions
- Use a Limited Admin account with Local Access Only
- Note that the provider does not support two-factor authentication

## Usage

### Initial Setup

1. Clone this repository

2. Set up Terraform Cloud
    - Create or select a Terraform Cloud workspace for this project
    - Configure workspace settings (execution mode, VCS integration)
    - Set up workspace variables for sensitive credentials
    - Configure your local Terraform CLI with your Terraform Cloud token
    - Link your local project to the Terraform Cloud workspace

3. Create your credentials file
   ```bash
   cp variables.auto.tfvars.example variables.auto.tfvars
   ```

   Edit `variables.auto.tfvars` with your actual credentials and configuration
   parameters.

4. **(Optional but Recommended)** Set up pre-commit hooks

   This repository includes pre-commit configuration to ensure code quality
   and consistency. Pre-commit runs checks automatically before each commit.

   ```bash
   # Install pre-commit
   pip install pre-commit

   # Install the git hooks
   pre-commit install

   # Run all checks manually (optional)
   pre-commit run --all-files
   ```

   Pre-commit will automatically check your changes before each commit,
   ensuring code quality standards are maintained.

### Deployment

1. Initialize Terraform
   ```bash
   terraform init
   ```

2. Plan your changes
   ```bash
   terraform plan
   ```

3. Apply the configuration
   ```bash
   terraform apply
   ```

### Outputs

After successful deployment, Terraform will output information about the
configured network resources.

## Project Structure

```
network/
├── main.tf                    # Terraform and provider configuration
├── variables.tf               # Variable definitions
├── variables.auto.tfvars      # Your configuration (excluded from VCS)
├── .pre-commit-config.yaml    # Pre-commit hooks configuration
├── .editorconfig              # Configuration for consistent coding style
├── .terraform.lock.hcl        # Terraform dependency lock file
├── LICENSE                    # MIT License file
└── README.md                  # This file
```

## Security Considerations

### Credential Management

1. NEVER commit credentials to version control
    - `variables.auto.tfvars` is in `.gitignore`
    - Use Terraform Cloud for secure variable storage

2. Recommended security practices:
    - Create a dedicated Terraform user in UniFi Controller
    - Use strong, unique passwords for all Wi-Fi networks
    - Regularly rotate API credentials
    - Use the principle of the least privilege

### Network Security

- Network segmentation using VLANs
- Secure Wi-Fi configurations
- Proper isolation between network segments

## Features

### Current Capabilities

- Network segmentation with VLANs
- Wi-Fi network management
- DHCP configuration
- Network isolation where needed
- Remote state management with Terraform Cloud

### Future Development

- Enhanced firewall rule management
- Advanced network services configuration
- Traffic management and QoS
- Improved credential management

## Troubleshooting

### Common Issues

1. **Authentication failures**: Verify your UniFi Controller credentials and
   ensure the API user has sufficient permissions
2. **Network conflicts**: Check for conflicts in your network configuration
3. **Device adoption**: Ensure devices are properly adopted before applying
   configurations

### Useful Commands

```bash
# Check current state
terraform show

# Refresh state from controller
terraform refresh

# Destroy specific resource
terraform destroy -target=<resource_name>

# View detailed logs
TF_LOG=DEBUG terraform apply
```

## Contributing

This is a personal project for home network management.
Feel free to use it as a reference for your own network configurations.
