resource "aws_security_group" "open_ssh" {
  name = "open-ssh-demo"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    yor_trace = "947ae0e3-0941-488a-90dc-9bddfc7591b9"
  }
}
