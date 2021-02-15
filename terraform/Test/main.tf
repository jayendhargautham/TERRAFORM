
provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "LB" {

  
  ami = "ami-0739f8cdb239fe9ae"
  instance_type = "t2.micro"
  key_name = "Jayendhar_1"
  vpc_security_group_ids = ["sg-0dc727bbde578615f"]
  subnet_id = "subnet-0d38d5bd7b39988e0"
  
  tags =  {
  Name = "LB"
  }
  private_ip="192.168.0.11"
  
}


resource "aws_instance" "WEB" {


  ami = "ami-0739f8cdb239fe9ae"
  instance_type = "t2.micro"
  key_name = "Jayendhar_1"
  vpc_security_group_ids = ["sg-07dbde5b157a33d98"]
  subnet_id = "subnet-0d38d5bd7b39988e0"

  tags = {
  Name = "WEB"
  }
  private_ip="192.168.0.12"

}

resource "aws_instance" "DB" {


  ami = "ami-0739f8cdb239fe9ae"
  instance_type = "t2.micro"
  key_name = "Jayendhar_1"
  vpc_security_group_ids = ["sg-07dbde5b157a33d98"]
  subnet_id = "subnet-0d38d5bd7b39988e0"

  tags = {
  Name = "DB"
  }
  private_ip="192.168.0.13"

}


