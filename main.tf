variable "propertys" {
  type        = list(string)
  description = "(optional) describe your variable"
  default     = ["value1", "value2"]
}

module "teste" {
  source   = "./module"
  count    = length(var.propertys)
  name     = format("%s-%d", "teste", count.index)
  property = element(var.propertys, count.index)
}

output "name" {
  value = module.teste.*.name
}

output "property" {
  value = module.teste.*.property
}

