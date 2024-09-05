resource "aws_instance" "ec2" {
  ami           = "ami-0afc8bfd639817fe3"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.my_public_subnet.id
  security_groups = [aws_security_group.my_security_group.id]
  user_data = <<-EOF
              #!/bin/bash
              sudo yum install nginx -y
              sudo systemctl start nginx
              sudo systemctl enable nginx
              echo "Ahmed Mamdouh Mostafa" | sudo tee /var/www/html/index.html
              EOF
              
  tags = {
    Name = "nginx_ec2_instance"
  }
  associate_public_ip_address = true
}