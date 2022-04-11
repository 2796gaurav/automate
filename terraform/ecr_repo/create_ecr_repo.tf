terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region  = var.region
}

resource "aws_ecr_repository" "main" {
  name                 = var.repo_name
  image_scanning_configuration {
    scan_on_push = true
  }
}