output "instance_public_ip" {
  value = aws_instance.web.public_ip
}

output "instance_id" {
  value = aws_instance.web.id
}

output "bucket_name" {
  value = aws_s3_bucket.bucket.bucket
}

output "vpc_id" {
  value = aws_vpc.main.id
}