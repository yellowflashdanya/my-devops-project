variable "cluster_name" {
  description = "The name of the EKS cluster"
  type        = string
}

variable "cluster_role_name" {
  description = "The name of Cluster Role"
  type        = string
}

variable "subnet_ids" {
  description = "List of subnet IDs to use for the EKS cluster"
  type        = list(string)
}