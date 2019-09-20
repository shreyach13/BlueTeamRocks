provider "aws" {
  region = "eu-central-1"
}

# A basic vm example to show how to provision a vm
resource "aws_instance" "blue-jenkins-server"{
  ami = "ami-07b70d32b581784a5"
  instance_type = "t2.micro"
#  user_data = <<-EOF
#            #!/bin/bash
#            echo "Hello, World" >index.html
#            nohup busybox httpd -f -p "${var.server_port}" &
#            EOF
  #This will change the name of the instance
  security_groups = [var.security_group_name]
  tags = {
    Name = "BlueTeamServer"
    Owner = "BlueTeamOfcourse"
  }
}
