

resource "aws_route53_record" "records" {
  zone_id  = "Z06671433AX1LTN7T42GS"
  name     = "frontend-dev"
  type     = "A"
  ttl      = 30
  records  = [var.private_ip]
}

variable "private_ip" {}