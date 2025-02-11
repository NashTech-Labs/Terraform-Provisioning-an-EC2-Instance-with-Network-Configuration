
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.82.2"
    }
  }
}

provider "aws" {
    region = "ap-south-1"
    access_key=""
    secret_key="" 
}

resource "aws_instance" "web_server" {
  ami           = ""  
  instance_type = "t2.micro"
  key_name      = "my-key-pair"  
  subnet_id     = aws_subnet.main.id
  vpc_security_group_ids= [aws_security_group.webServer_sg.id]
  associate_public_ip_address = true

  tags = {
    Name = "WebServer"
  }
}
