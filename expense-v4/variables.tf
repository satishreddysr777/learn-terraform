variable "instance_type" {
  default = "t3.micro"
}

variable "vpc_security_group_ids" {
  default = ["sg-0cd6bb8f5a75a3fb9"]
}

variable "zone_id" {
  default = "Z06671433AX1LTN7T42GS"
}

variable "components" {
  default = {
    frontend = {
      name = frontend
      instance_type = "t3.micro"
    }
    backend = {
      name = backend
    }
    mysql = {
      name = mysql
      instance_type = "t3.small"
    }
  }
}