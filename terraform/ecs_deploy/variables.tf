variable "region" {
  description = "region where you want to deploy"
  type        = string
  default     = "ap-south-1"
}

variable "repo_name" {
  description = "ecr repo name"
  type        = string
  default     = "deploy_test"
}