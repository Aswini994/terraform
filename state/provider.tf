terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.98.0"
    }
  }


  backend  "s3" {
    bucket = "tejaswini.state"
    key = "remote-state-demo"
    region = "us-east-1"
    dynamodb_table = "tejaswini.state"
    encrypt = true
    use_lockfile = true # enable s3 native locking
  }
}

provider "aws" {
  # Configuration options
}