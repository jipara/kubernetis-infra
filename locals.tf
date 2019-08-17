locals = {
  bastion_autoscaling_group_ids     = ["${aws_autoscaling_group.bastions-kubernetesjipara-com.id}"]
  bastion_security_group_ids        = ["${aws_security_group.bastion-kubernetesjipara-com.id}"]
  bastions_role_arn                 = "${aws_iam_role.bastions-kubernetesjipara-com.arn}"
  bastions_role_name                = "${aws_iam_role.bastions-kubernetesjipara-com.name}"
  cluster_name                      = "kubernetesjipara.com"
  master_autoscaling_group_ids      = ["${aws_autoscaling_group.master-us-east-2a-masters-kubernetesjipara-com.id}", "${aws_autoscaling_group.master-us-east-2b-masters-kubernetesjipara-com.id}", "${aws_autoscaling_group.master-us-east-2c-masters-kubernetesjipara-com.id}"]
  master_security_group_ids         = ["${aws_security_group.masters-kubernetesjipara-com.id}"]
  masters_role_arn                  = "${aws_iam_role.masters-kubernetesjipara-com.arn}"
  masters_role_name                 = "${aws_iam_role.masters-kubernetesjipara-com.name}"
  node_autoscaling_group_ids        = ["${aws_autoscaling_group.nodes-kubernetesjipara-com.id}"]
  node_security_group_ids           = ["${aws_security_group.nodes-kubernetesjipara-com.id}"]
  node_subnet_ids                   = ["${aws_subnet.us-east-2a-kubernetesjipara-com.id}", "${aws_subnet.us-east-2b-kubernetesjipara-com.id}", "${aws_subnet.us-east-2c-kubernetesjipara-com.id}"]
  nodes_role_arn                    = "${aws_iam_role.nodes-kubernetesjipara-com.arn}"
  nodes_role_name                   = "${aws_iam_role.nodes-kubernetesjipara-com.name}"
  region                            = "us-east-2"
  route_table_private-us-east-2a_id = "${aws_route_table.private-us-east-2a-kubernetesjipara-com.id}"
  route_table_private-us-east-2b_id = "${aws_route_table.private-us-east-2b-kubernetesjipara-com.id}"
  route_table_private-us-east-2c_id = "${aws_route_table.private-us-east-2c-kubernetesjipara-com.id}"
  route_table_public_id             = "${aws_route_table.kubernetesjipara-com.id}"
  subnet_us-east-2a_id              = "${aws_subnet.us-east-2a-kubernetesjipara-com.id}"
  subnet_us-east-2b_id              = "${aws_subnet.us-east-2b-kubernetesjipara-com.id}"
  subnet_us-east-2c_id              = "${aws_subnet.us-east-2c-kubernetesjipara-com.id}"
  subnet_utility-us-east-2a_id      = "${aws_subnet.utility-us-east-2a-kubernetesjipara-com.id}"
  subnet_utility-us-east-2b_id      = "${aws_subnet.utility-us-east-2b-kubernetesjipara-com.id}"
  subnet_utility-us-east-2c_id      = "${aws_subnet.utility-us-east-2c-kubernetesjipara-com.id}"
  vpc_cidr_block                    = "${aws_vpc.kubernetesjipara-com.cidr_block}"
  vpc_id                            = "${aws_vpc.kubernetesjipara-com.id}"
}
