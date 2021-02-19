terraform {
  required_version = "0.14.7"

  required_providers {
    aws = ">= 3.28.0"
  }
}

provider "aws" {
  region                  = "ap-northeast-2"
  shared_credentials_file = "~/.aws/credentials"
  profile                 = "terraform"
}
