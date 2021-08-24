variable "name" {
  type        = string
  description = "(optional) describe your variable"
}


output "name" {
  value = format("%s-%s", var.name, "from-submodule")
}
