terraform {
    required_version = "~> 1.1.7" // added latest version
    required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.5.0"
     }
    }
   }

provider "aws" {
        region = "us-east-1" 
        #profile = "default"
	}

resource "aws_instance" "Nareshinfra" {
	ami = "ami-0c02fb55956c7d316"
	count = 2
	instance_type = "t2.micro"
}
