variable "vpc_cidr" {
  description = "your CIDR"
  type = string
}

variable "cluster_name" {
   description = "your cluster name"
    type = string
}

variable "private_subnet_cidrs" {
  description = "your private subnet cidr"
  type = list(string)
}

variable "public_subnet_cidrs" {
  description = "your public subnet cidr"
  type = list(string)
}

variable "availability_zones" {
  description = "how many availability zones you need"
  type = list(string)
}
