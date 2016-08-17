variable "access_key" {}
variable "secret_key" {}

/* Global variables */
variable "keypair" {}
variable "keyfile" {}


variable "region" {
  default { 
    "primary" = "us-west-2"
    "backup" = "us-east-1"
  }
}

variable "insttype" {
  default = {
    "server" = "t2.large"
    
  }
}

variable "ami_centos7" {
  default = {
    "us-east-1" = "ami-61bbf104"
    "us-west-2" = "ami-d2c924b2"
    "platform" = "CentOS 7"
  }
}



variable "azones" {
  default = {
    "us-east-1" = "us-east-1b,us-east-1c"
    "us-west-2" = "us-west-2a,us-west-2b"
  }
}


variable "hadoop_distro" {
#  default = "CDH"
  default = "HDP"
}


variable "s3_bucket_name" {
  default = "hadoopterraform"
}
