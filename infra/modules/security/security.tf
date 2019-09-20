resource "aws_security_group" "blue-security"{
  name = "blue-team-${random_id.myrandom.hex}"
  tags = {
    Name = "BlueTeamSG"
  }
  ingress {
    from_port = var.from_port
    to_port = var.to_port
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port       = var.from_port
    to_port         = var.from_port
    protocol        = "tcp"
    cidr_blocks     = ["0.0.0.0/0"]
  }
}

resource "random_id" "myrandom" {
  byte_length = 3
}
