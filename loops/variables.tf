variable "instances" {
    default = ["redis" , "rabbitmq" , "mysql" , "mongodb"]
}

variable "zone_id" {
    default =  "Z08394983VCGATLL8SRZA"
}

variable "domain_name" {
    default = "amaranath.fun"
}


variable "ami_id"{
    default = "ami-09c813fb71547fc4f"
}

variable "egress_from_port"{
    default = 0
}
variable "egress_to_port"{
    default = 0
}
variable "ingress_from_port"{
    default = 0
}
variable "ingress_to_port"{
    default = 0
}

variable "sg_name"{
    default = "allow-all-ports-1"
}

variable "cidr"{
    default = ["0.0.0.0/0"]
}

variable "protocol"{
    default = "-1"
}