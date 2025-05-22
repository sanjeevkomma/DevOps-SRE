variable "aws_region" {
  default = "us-east-1"
}

variable "ami_id" {
  default = "ami-0c55b159cbfafe1f0"  # Amazon Linux 2 AMI (use updated AMI if needed)
}

variable "instance_type" {
  default = "t2.micro"
}
