terraform {
  required_version = ">= 1.5"
  }

variable "nombre" {
  type = string
  default = "mundo"
  }

resource "terraform_data" "saludo" {
  input = "hola ${var.nombre}"
  }

output "saludo" {
value = terraform_data.saludo.output
}
