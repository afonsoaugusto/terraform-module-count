variable "name" {
  type        = string
  description = "(optional) describe your variable"
}


variable "property" {
  type = object({
    abc   = string
    count = number
  })
  description = "(optional) describe your variable"

}

module "sub" {
  source = "./sub-module"
  count  = var.property.count
  name   = format("%s-%d", var.property.abc, count.index)
}

output "name" {
  value = var.name
}

output "property" {
  value = module.sub.*.name
}
