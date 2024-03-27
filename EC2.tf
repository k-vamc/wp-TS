resource "aws_instance" "wordpress" {
  ami                         = "ami-0f0d286737a6c4ef2"
  instance_type               = "t3.micro"
  key_name                    = "stockholm"
  vpc_security_group_ids      = [aws_security_group.web-sg.id]
  subnet_id                   = aws_subnet.public-subnet1.id
  associate_public_ip_address = true
  user_data                   = file("data.sh")
  tags = {
    name = "wordpress"
  }
}
