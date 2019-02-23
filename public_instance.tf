resource "aws_instance" "public_instance" {
  ami                         = "${var.ami}"
  instance_type               = "${var.instance_type}"
  key_name                    = "${var.key_name}"
  monitoring                  = true
  vpc_security_group_ids      = ["${aws_security_group.sg.id}"]
  subnet_id                   = "${aws_subnet.public_subnet.id}"
  associate_public_ip_address = true

  tags {
    Name        = "httpd-instance"
    }
user_data = <<HEREDOC
  #!/bin/bash
  yum update -y
  yum install httpd -y
  service httpd start
HEREDOC

}
