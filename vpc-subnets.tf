# resource "aws_vpc" "javahome_vpc" {
#   cidr_block = "${var.vpc_cidr}"
#   tags {
#     Name = "JavaHomeVPC"
#   }
# }
# resource "aws_subnet" "subnets" {
#   count             = "${var.subnet_count}"
#   vpc_id            = "${aws_vpc.javahome_vpc.id}"
#   cidr_block        = "${element(var.subnet_cidrs,count.index)}"
#   availability_zone = "${element(var.azs,count.index)}"
# }
