variable "name_prefix" {
  type    = string
  default = "terraform"
}

variable "aws_region" {
  type    = string
  default = "us-west-2"
}

variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "subnets" {
  type = map(string)
  default = {
    "us-west-2a" = "10.0.1.0/24"
    "us-west-2b" = "10.0.2.0/24"
    "us-west-2c" = "10.0.3.0/24"
  }
}

variable "keypair_name" {
  type    = string
  default = "percy_id_ed25519"
}

variable "instance_type" {
  type    = string
  default = "t3.micro"
}
