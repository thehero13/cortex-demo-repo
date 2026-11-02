# Demo: retrigger Cortex PR scan with new findings
resource "aws_s3_bucket" "rescan_public" {
  bucket = "cortex-demo-rescan-public"
}

resource "aws_s3_bucket_acl" "rescan_public" {
  bucket = aws_s3_bucket.rescan_public.id
  acl    = "public-read"
}

resource "aws_security_group" "rescan_all_open" {
  name = "rescan-all-open"
  ingress {
    from_port   = 0
    to_port     = 65535
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_ebs_volume" "rescan_unencrypted" {
  availability_zone = "eu-west-1a"
  size              = 10
  encrypted         = false
}
