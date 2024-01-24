resource "aws_instance" "frontend" {
  ami                     = "ami-0f3c7d07486cad139"
  instance_type           = "t3.micro"
  vpc_security_group_ids  = ["sg-0cd6bb8f5a75a3fb9"]

  tags = {
    Name = "frontend-dev"
  }
}

resource "aws_route53_record" "frontend" {
  zone_id = "Z06671433AX1LTN7T42GS"
  name    = "frontend-dev"
  type    = "A"
  ttl     = 30
  records = [aws_instance.frontend.private_ip]
}


resource "aws_instance" "backend" {
  ami                     = "ami-0f3c7d07486cad139"
  instance_type           = "t3.micro"
  vpc_security_group_ids  = ["sg-0cd6bb8f5a75a3fb9"]

  tags = {
    Name = "backend-dev"
  }
}

resource "aws_route53_record" "backend" {
  zone_id = "Z06671433AX1LTN7T42GS"
  name    = "backend-dev"
  type    = "A"
  ttl     = 30
  records = [aws_instance.backend.private_ip]
}


resource "aws_instance" "mysql" {
  ami                     = "ami-0f3c7d07486cad139"
  instance_type           = "t3.micro"
  vpc_security_group_ids  = ["sg-0cd6bb8f5a75a3fb9"]

  tags = {
    Name = "mysql-dev"
  }
}

resource "aws_route53_record" "mysql" {
  zone_id = "Z06671433AX1LTN7T42GS"
  name    = "mysql-dev"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mysql.private_ip]
}