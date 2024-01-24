variable "fruits1" {
  default = {
    apple = 10
    banana = 100
  }
}

variable "fruits2" {
  default = {
    apple = {
      name     = "apple"
      quantity = 10
    }
    banana = {
      name     = "banana"
      quantity = 100
    }
  }
}

resource "null_resource" "test" {
  for_each = var.fruits1
  name = "${each.key} = ${each.value}"
}