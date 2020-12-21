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
  default = "ami-0918a3f7593b42b0d"
  
}

variable "instance_type" {
  default = "t2.medium"
}

variable "key_pair" {
  default = "tray-ecommerce"
}



variable "domain" {
  default  = "teste.example.s3.com"
}





variable "s3_bucket_name" {
default = "bucket-tray-ecommerce"

}


