resource "aws_instance" "ec2" {
  ami                     = data.aws_ami.centos8.image_id
  instance_type           = "t2.micro"

  tags = {
    Name = "frontend-dev"
  }
}