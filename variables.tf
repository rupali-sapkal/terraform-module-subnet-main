variable "vpc_id" {
  description = "ID of the VPC where the subnet will be created"
  type        = string
}

variable "cidr_block" {
  description = "CIDR block for the subnet"
  type        = string
}

variable "availability_zone" {
  description = "Availability zone for the subnet"
  type        = string
}

variable "subnet_name" {
  description = "Name tag for the subnet"
  type        = string
}

variable "is_public" {
  description = "Whether the subnet is public (assigns public IPs)"
  type        = bool
  default     = false
}

variable "tags" {
  description = "Map of tags to apply to all resources"
  type        = map(string)
  default     = {}
}
