variable "v1" {
  default = "Hello World"
}

variable "v2" {
  default = ["Hello", 25, true]
}

variable "v3" {
  default = {
    abc = 100
    xyz = "Two Hundred"
  }
}