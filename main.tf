variable "name" {
  type        = string
  description = "(optional) describe your variable"
  default     = "default"
}


variable "propertys" {
  type = list(object({
    abc   = string
    count = number
  }))
  description = "(optional) describe your variable"
  default = [{
    abc   = "a"
    count = 1
    }, {
    abc   = "b"
    count = 2
  }]
}

module "teste" {
  source   = "./module"
  count    = length(var.propertys)
  name     = format("%s-%d", "teste", count.index)
  property = element(var.propertys, count.index)
}

output "name" {
  value = var.name
}

output "property" {
  value = module.teste.*.property
}

