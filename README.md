# terraform-module-subnet

Terraform module to create an AWS Subnet inside an existing VPC.

## Usage

```hcl
module "subnet" {
  source = "git::https://github.com/<your-org>/terraform-module-subnet.git?ref=v1.0.0"

  vpc_id            = "vpc-0abc123"
  cidr_block        = "10.0.1.0/24"
  availability_zone = "us-east-1a"
  subnet_name       = "myapp-dev-public-subnet-1"
  is_public         = true

  tags = {
    Environment = "dev"
    ManagedBy   = "Terraform"
  }
}
```

## Inputs

| Name              | Description                          | Type          | Default | Required |
|-------------------|--------------------------------------|---------------|---------|----------|
| vpc_id            | ID of the VPC                        | `string`      | —       | yes      |
| cidr_block        | CIDR block for the subnet            | `string`      | —       | yes      |
| availability_zone | AZ for the subnet                    | `string`      | —       | yes      |
| subnet_name       | Name tag for the subnet              | `string`      | —       | yes      |
| is_public         | Assign public IPs on launch          | `bool`        | `false` | no       |
| tags              | Map of tags to apply                 | `map(string)` | `{}`    | no       |

## Outputs

| Name      | Description            |
|-----------|------------------------|
| subnet_id | The ID of the subnet   |
