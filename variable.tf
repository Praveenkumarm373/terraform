variable "region" {
default = "ap-southeast-1"
}
variable "vpc" {
default = "10.1.0.0/16"
description = "the vpc cdir"
}
variable "public" {
default = "10.1.1.0/24"
description = "the public subnet cdir"
}
variable "private" {
default = "10.1.2.0/24"
description = "the private subnet cdir"
}
variable "pub_zone" {
default = "ap-southeast-1a"
description = "the pub_zone cdir"
}
variable "pri_zone" {
default = "ap-southeast-1b"
description = "the pri_zone cdir"
}
variable "ami" {
default = "ami-04677bdaa3c2b6e24"
description = "the ami"
}
variable "instance_type" {
default = "t2.micro"
description = "the instance type"
}
variable "key_name" {
default = "linux1"
description = "the key pair"
}
