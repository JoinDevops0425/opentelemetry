variable "cluster_name" {
  description = "I am roles for cluster"
  type = string
}

variable "subnet_ids" {
  description = "subnet Id"
  type = list(string)
}


variable "node_groups" {
  description = "EKS node group configuratoin"
  type = map(object({
    instance_type = list(string)
    capacity_type = string
    scaling_config = object({
      desired_size = number
      max_size = number
      min_size = number 
    })
    
  }))
}
