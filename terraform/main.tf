resource "aws_instance" "default" {
  count = 0
  ami               = "ami-0ed9277fb7eb570c9"
  instance_type     = "t2.micro"
  availability_zone = "us-east-1b"

  security_groups = ["default"]

  tags = {
    Name        = "${var.environment}-ec2-instance"
    environment = var.environment
    provider    = var.deployer
  }
}