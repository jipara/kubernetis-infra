resource "aws_route_table_association" "private-us-east-2a-kubernetesjipara-com" {
  subnet_id      = "${aws_subnet.us-east-2a-kubernetesjipara-com.id}"
  route_table_id = "${aws_route_table.private-us-east-2a-kubernetesjipara-com.id}"
}

resource "aws_route_table_association" "private-us-east-2b-kubernetesjipara-com" {
  subnet_id      = "${aws_subnet.us-east-2b-kubernetesjipara-com.id}"
  route_table_id = "${aws_route_table.private-us-east-2b-kubernetesjipara-com.id}"
}

resource "aws_route_table_association" "private-us-east-2c-kubernetesjipara-com" {
  subnet_id      = "${aws_subnet.us-east-2c-kubernetesjipara-com.id}"
  route_table_id = "${aws_route_table.private-us-east-2c-kubernetesjipara-com.id}"
}

resource "aws_route_table_association" "utility-us-east-2a-kubernetesjipara-com" {
  subnet_id      = "${aws_subnet.utility-us-east-2a-kubernetesjipara-com.id}"
  route_table_id = "${aws_route_table.kubernetesjipara-com.id}"
}

resource "aws_route_table_association" "utility-us-east-2b-kubernetesjipara-com" {
  subnet_id      = "${aws_subnet.utility-us-east-2b-kubernetesjipara-com.id}"
  route_table_id = "${aws_route_table.kubernetesjipara-com.id}"
}

resource "aws_route_table_association" "utility-us-east-2c-kubernetesjipara-com" {
  subnet_id      = "${aws_subnet.utility-us-east-2c-kubernetesjipara-com.id}"
  route_table_id = "${aws_route_table.kubernetesjipara-com.id}"
}
