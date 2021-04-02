provider "aws" {
  region = "${var.region}"
  #access_key = "AKIAYMP2EDE4EENPH74I"
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  #secret_key = "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"
}

resource "aws_instance" "web" {
  ami           = "${var.ami_id}"
  instance_type = "${var.instance_type}"

  tags = {
    Name = "${var.tag}"
  }
}
