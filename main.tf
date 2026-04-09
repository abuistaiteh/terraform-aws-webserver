resource "aws_security_group" "web_sg" {
  name        = "${var.project_name}-${var.Environment}-sg"
  description = "security group for web server"

  ingress {
    from_port   = 22
    description = "allow ssh access"
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["${var.allowed_ssh_ip}/32"]
  }

  ingress {
    from_port   = 80
    description = "allow http access"
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    description = "allow all outbound traffic"
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name        = "${var.project_name}-${var.Environment}-sg"
    Project     = var.project_name
    Environment = var.Environment
  }
}
resource "aws_instance" "web" {
  ami                    = var.AMI_id
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.web_sg.id]
  associate_public_ip_address = true
  user_data              = file("${path.module}/user_data.sh")
  tags = {
    Name        = "${var.project_name}-${var.Environment}-ec2"
    Project     = var.project_name
    Environment = var.Environment
  }
}

