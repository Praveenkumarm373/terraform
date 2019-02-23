resource "aws_instance" "private_instance" {
  ami                         = "${var.ami}"
  instance_type               = "${var.instance_type}"
  key_name                    = "${var.key_name}"
  monitoring                  = true
  vpc_security_group_ids      = ["${aws_security_group.sg.id}"]
  subnet_id                   = "${aws_subnet.private_subnet.id}"

  tags {
    Name        = "private-instance"
  }
}
