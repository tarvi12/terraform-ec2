resource "aws_instance" "example" {
  ami          = var.ami_id
  instance_type = var.instance_type
  key_name = var.key_name
  subnet_id = var.subnet_id
  associate_public_ip_address = true
  

  tags = {
    Name = "terraform-server"
  }
}
output "ec2_public_ip" {
  value       = aws_instance.example.public_ip
  sensitive    = true
  description = "description"
}
