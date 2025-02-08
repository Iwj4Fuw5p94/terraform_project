
# Configure the AWS Provider
# aws user key ==>AKIAQIJRRW3TREM3X5FT
# aws user secret key==>
# aws region==>us-east-1
# aws iam user=>aws_project
# aws iam userpassword=> 7999652070Kk@



provider "aws" {
  region = "us-east-1" // Change this to your desired AWS region
}

resource "aws_instance" "example" {
  ami           = "ami-04b4f1a9cf54c11d0" // The Amazon Machine Image (AMI) ID for the instance. Choose one compatible with your region.
  instance_type = "t2.micro" // The instance type (t2.micro is eligible for the AWS Free Tier)
  subnet_id = "subnet-05172bf977eca9945" // The ID of the subnet where the instance will be launched. Make sure it belongs to the same VPC.
  key_name = "key" // The name of the SSH key pair to connect to the instance. Ensure you have created this key pair in AWS.
  tags = {
    Name = "example-instances" // Set a friendly name for the instance
  }
}

