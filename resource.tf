

resource "aws_default_vpc" "main" {
  
  enable_dns_hostnames = true
   
   tags = {
     Name = "main"
   }

  
}