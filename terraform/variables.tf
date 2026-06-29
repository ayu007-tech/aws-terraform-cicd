variable "aws_region" {
  default = "ap-south-1"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "key_name" {
  description = "EC2 Key Pair"
}

variable "bucket_name" {
  description = "Unique S3 Bucket Name"
}