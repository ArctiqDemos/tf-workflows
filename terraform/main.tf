resource "aws_instance" "default" {
  ami               = "ami-0ed9277fb7eb570c9"
  instance_type     = "t2.micro"
  availability_zone = "us-east-1b"

  security_groups = ["default"]

  tags = {
    Name        = "${var.environment}-instance"
    environment = var.environment
    provider    = "terraform"
  }
}