resource "aws_security_group" "retest_cortex_pr_sg" {
  name        = "retest-cortex-pr-sg"
  description = "Demo SG for Cortex PR scan retest"
}

resource "aws_security_group_rule" "ssh_open_to_world_retest" {
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.retest_cortex_pr_sg.id
}
