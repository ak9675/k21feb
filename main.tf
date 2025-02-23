resource "aws_instance" "ins-test" {
  ami           = "ami-04b4f1a9cf54c11d0"
  instance_type = "t2.micro"

 tags = {
   Name = "cloud-in"
 }

}

resource "aws_s3_bucket" "mybuck" {
  bucket = "new-buck7656"

}

resource "aws_iam_user" "myuser" {
  name = "cloud-user"
}

resource "aws_vpc" "myvpc" {
  cidr_block = "10.0.0.0/24"
  
  tags = {
    Name = "cloud-vpc"
  }
}

variable "user-inp" {
  description = "Enter your working env dev/text/prod"
}