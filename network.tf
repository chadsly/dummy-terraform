resource "aws_security_group" "limited" {
  name        = "limited"
  description = "Allow the new server to be accessed from anywhere on port 22 and port 80"
  vpc_id     = var.vpcid
    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
        description = "Allow ssh"
    }
    ingress {
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
        description = "Allow ssh"
    }
  tags = {
    Name = "limited"
  }
}