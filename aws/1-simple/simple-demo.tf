# for AWS
provider "aws" {
  access_key = "MY-ACCESS-KEY"
  secret_key = "MY-SECRET-KEY"
  region     = "ap-south-1"
}

#create first aws ec2 instance
resource "aws_instance" "my-first-ec2" {
	ami           = "ami-b46f48db"
  	instance_type = "t2.micro"
}