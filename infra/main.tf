terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
    region = var.aws_region
    shared_credentials_files = var.aws_credentials_file
}

#### Jenkins Server ####

resource "aws_instance" "web" {
  ami           = "ami-0866a3c8686eaeeba" # Ubuntu 24.04 LTS
  instance_type = "t2.micro"

  tags = {
    Name = "Jenkins Server"
  }
}