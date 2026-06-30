resource "aws_security_group" "custom_rule_demo_sg" {
  name        = "custom-rule-demo-sg"
  description = "Demo SG for Cortex custom rule"
}

resource "aws_security_group_rule" "ssh_open_to_internet" {
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.custom_rule_demo_sg.id
}
