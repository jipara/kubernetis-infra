output "bastion_autoscaling_group_ids" {
  value = ["${aws_autoscaling_group.bastions-kubernetesjipara-com.id}"]
}

output "bastion_security_group_ids" {
  value = ["${aws_security_group.bastion-kubernetesjipara-com.id}"]
}

output "bastions_role_arn" {
  value = "${aws_iam_role.bastions-kubernetesjipara-com.arn}"
}

output "bastions_role_name" {
  value = "${aws_iam_role.bastions-kubernetesjipara-com.name}"
}

output "cluster_name" {
  value = "kubernetesjipara.com"
}

output "master_autoscaling_group_ids" {
  value = ["${aws_autoscaling_group.master-us-east-2a-masters-kubernetesjipara-com.id}", "${aws_autoscaling_group.master-us-east-2b-masters-kubernetesjipara-com.id}", "${aws_autoscaling_group.master-us-east-2c-masters-kubernetesjipara-com.id}"]
}

output "master_security_group_ids" {
  value = ["${aws_security_group.masters-kubernetesjipara-com.id}"]
}

output "masters_role_arn" {
  value = "${aws_iam_role.masters-kubernetesjipara-com.arn}"
}

output "masters_role_name" {
  value = "${aws_iam_role.masters-kubernetesjipara-com.name}"
}

output "node_autoscaling_group_ids" {
  value = ["${aws_autoscaling_group.nodes-kubernetesjipara-com.id}"]
}

output "node_security_group_ids" {
  value = ["${aws_security_group.nodes-kubernetesjipara-com.id}"]
}

output "node_subnet_ids" {
  value = ["${aws_subnet.us-east-2a-kubernetesjipara-com.id}", "${aws_subnet.us-east-2b-kubernetesjipara-com.id}", "${aws_subnet.us-east-2c-kubernetesjipara-com.id}"]
}

output "nodes_role_arn" {
  value = "${aws_iam_role.nodes-kubernetesjipara-com.arn}"
}

output "nodes_role_name" {
  value = "${aws_iam_role.nodes-kubernetesjipara-com.name}"
}

output "region" {
  value = "us-east-2"
}

output "route_table_private-us-east-2a_id" {
  value = "${aws_route_table.private-us-east-2a-kubernetesjipara-com.id}"
}

output "route_table_private-us-east-2b_id" {
  value = "${aws_route_table.private-us-east-2b-kubernetesjipara-com.id}"
}

output "route_table_private-us-east-2c_id" {
  value = "${aws_route_table.private-us-east-2c-kubernetesjipara-com.id}"
}

output "route_table_public_id" {
  value = "${aws_route_table.kubernetesjipara-com.id}"
}

output "subnet_us-east-2a_id" {
  value = "${aws_subnet.us-east-2a-kubernetesjipara-com.id}"
}

output "subnet_us-east-2b_id" {
  value = "${aws_subnet.us-east-2b-kubernetesjipara-com.id}"
}

output "subnet_us-east-2c_id" {
  value = "${aws_subnet.us-east-2c-kubernetesjipara-com.id}"
}

output "subnet_utility-us-east-2a_id" {
  value = "${aws_subnet.utility-us-east-2a-kubernetesjipara-com.id}"
}

output "subnet_utility-us-east-2b_id" {
  value = "${aws_subnet.utility-us-east-2b-kubernetesjipara-com.id}"
}

output "subnet_utility-us-east-2c_id" {
  value = "${aws_subnet.utility-us-east-2c-kubernetesjipara-com.id}"
}

output "vpc_cidr_block" {
  value = "${aws_vpc.kubernetesjipara-com.cidr_block}"
}

output "vpc_id" {
  value = "${aws_vpc.kubernetesjipara-com.id}"
}
