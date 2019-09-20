provider "aws" {
  region = "eu-central-1"
}

#This is create a new bucket
resource "aws_s3_bucket" "BlueTeamStateTestEnv" {
 bucket = "blueteam-state-testenv"
 region = "eu-central-1"
 tags = {
    Name  = "blueteam-state-testenv"
    owner = var.owner
  }
}
