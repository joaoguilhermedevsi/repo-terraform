variable "region" {
  default = "us-east-2"
}

variable "cidr_block" {
  default = "192.168.0.0/16"

}

variable "access_key" {
  default = ""
}


variable "secret_key" {
  default = ""

}


variable "private_a_cidr_block" {
  default = "192.168.6.0/23"
}

variable "ami" {
  default = ""
  
}

variable "instance_type" {
  default = ""
}

variable "key_pair" {
  default = ""
}



variable "domain" {
  default  = "teste.example.s3.com"
}





variable "s3_bucket_name" {
default = ""

}


