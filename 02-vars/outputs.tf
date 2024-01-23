output "v1" {
  value = var.v1
}

output "First_value_in_list" {
  value = var.v2[0]
}

output "Second_value_in_list" {
  value = var.v2[1]
}

output "Value_in_map" {
  value = var.v3["xyz"]
}

output "Value_in_Map1" {
  value = lookup(var.v3, "abc1", "none")
}

output "Value_in_Map2" {
  value = lookup(var.v3, "abc", "none")
}

output "Second_Value_in_List1" {
  value = element(var.v2, 4)
}