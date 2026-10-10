
variable "resource_groups" {
  type = map(object({
    name     = string
    location = string
  }))
}
variable "vent" {
  type = map(object({
    name     = string
    location = string
  }))
}