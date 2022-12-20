resource "aws_security_group" "TerraformEc2_security" {
  name        = "TerraformEc2_security"
  description = "Allow TLS inbound traffic"
  vpc_id      = aws_default_vpc.main.id

  ingress {
    description      = "Inbound rules from VPC"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = [aws_default_vpc.main.cidr_block]
    
  }
    ingress {
    description      = "Inbound rules from VPC"
    from_port        = 8003
    to_port          = 8003
    protocol         = "tcp"
    cidr_blocks      = [aws_default_vpc.main.cidr_block]
    
  }
    ingress {
    description      = "Inbound rules from VPC"
    from_port        = 8001
    to_port          = 8001
    protocol         = "tcp"
    cidr_blocks      = [aws_default_vpc.main.cidr_block]
    
  }



  

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    
  }

  tags = {
    Name = "TerraformEc2_security"
    instance_name = "Terraform-Ec2"
  }
}