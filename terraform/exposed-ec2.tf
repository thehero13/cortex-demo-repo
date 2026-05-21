resource "aws_security_group" "open_ssh" {
  name = "open-ssh-demo"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    yor_trace = "222d7f1b-a07d-4dc3-b1eb-6b2573d7b287"
  }
}
