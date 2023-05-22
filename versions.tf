terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.0.0"
      configuration_aliases = [
        aws.cluster,
        aws.parent,
      ]
    }
  }
  required_version = ">= 1.2.2"
}
