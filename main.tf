# main.tf

provider "aws" {
  region = "us-east-1"  # Specify your desired AWS region
}

resource "aws_instance" "example" {
  ami           = "ami-0440d3b780d96b29d"  # Specify the AMI ID of the instance
  instance_type = "t2.micro"               # Specify the instance type

  tags = {
    Name = "Example-terraform"               # Specify a name for the instance
  }
}
