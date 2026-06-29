resource "aws_instance" "web" {

  ami                    = "ami-03bb6d83c60fc5f7c"
  instance_type          = var.instance_type
  subnet_id              = aws_subnet.public.id
  vpc_security_group_ids = [aws_security_group.web.id]
  key_name               = var.key_name

  associate_public_ip_address = true

  iam_instance_profile = aws_iam_instance_profile.profile.name

  user_data = <<EOF
#!/bin/bash
sudo yum update -y
sudo yum install docker -y
sudo systemctl start docker
sudo systemctl enable docker
EOF

  tags = {
    Name = "Terraform-EC2"
  }
}