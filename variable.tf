variable "vpc-cidr"{
    default = "10.0.0.0/16"
    description = "cidr range for vpc"
}

variable "public-subnet-cidr"{
    default = ["10.0.1.0/24", "10.0.2.0/24"]
    description = "cidr range for public subnet"
}

variable "private-subnet-cidr"{
    default = ["10.0.5.0/24", "10.0.6.0/24"]
    description = "cidr range for private subnet"
}

variable "eks-node-img"{
    default ="AL2_x86_64"
    description = "image type for eks nodes"
}
variable "eks-node-inst"{
     default=["t3.large"]
     description = "instance type for eks node"
}

