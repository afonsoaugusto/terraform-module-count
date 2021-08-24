variable "name" {
  type        = string
  description = "(optional) describe your variable"
}

variable "property" {
  type        = string
  description = "(optional) describe your variable"
}

output "name" {
  value = var.name
}

output "property" {
  value = var.property
}
