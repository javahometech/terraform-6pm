# AWS resources used by our infrastructure

resource "aws_instance" "demo" {
  count         = 2
  ami           = "${lookup(var.ami, var.region)}"
  instance_type = "${var.instance_type}"
  key_name      = "${aws_key_pair.hari-key.key_name}"

  tags {
    Name       = "Terraform-${count.index + 1}"
    Department = "Training-${count.index + 1}"
  }
}

resource "aws_key_pair" "hari-key" {
  key_name   = "hari-6pm"
  public_key = "${file("./hari-6pm.pub")}"
}

data "aws_availability_zones" "available" {}


output "ipaddress" {
  value = "${aws_instance.demo.*.public_ip}"
}

output "subnet_ids" {
  value = "${aws_instance.demo.*.subnet_id}"
}

output "azs" {
  value = "${data.aws_availability_zones.available.*.name}"
}
