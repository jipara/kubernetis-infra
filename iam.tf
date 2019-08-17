resource "aws_iam_instance_profile" "bastions-kubernetesjipara-com" {
  name = "bastions.kubernetesjipara.com"
  role = "${aws_iam_role.bastions-kubernetesjipara-com.name}"
}

resource "aws_iam_instance_profile" "masters-kubernetesjipara-com" {
  name = "masters.kubernetesjipara.com"
  role = "${aws_iam_role.masters-kubernetesjipara-com.name}"
}

resource "aws_iam_instance_profile" "nodes-kubernetesjipara-com" {
  name = "nodes.kubernetesjipara.com"
  role = "${aws_iam_role.nodes-kubernetesjipara-com.name}"
}

resource "aws_iam_role" "bastions-kubernetesjipara-com" {
  name               = "bastions.kubernetesjipara.com"
  assume_role_policy = "${file("${path.module}/data/aws_iam_role_bastions.kubernetesjipara.com_policy")}"
}

resource "aws_iam_role" "masters-kubernetesjipara-com" {
  name               = "masters.kubernetesjipara.com"
  assume_role_policy = "${file("${path.module}/data/aws_iam_role_masters.kubernetesjipara.com_policy")}"
}

resource "aws_iam_role" "nodes-kubernetesjipara-com" {
  name               = "nodes.kubernetesjipara.com"
  assume_role_policy = "${file("${path.module}/data/aws_iam_role_nodes.kubernetesjipara.com_policy")}"
}

resource "aws_iam_role_policy" "bastions-kubernetesjipara-com" {
  name   = "bastions.kubernetesjipara.com"
  role   = "${aws_iam_role.bastions-kubernetesjipara-com.name}"
  policy = "${file("${path.module}/data/aws_iam_role_policy_bastions.kubernetesjipara.com_policy")}"
}

resource "aws_iam_role_policy" "masters-kubernetesjipara-com" {
  name   = "masters.kubernetesjipara.com"
  role   = "${aws_iam_role.masters-kubernetesjipara-com.name}"
  policy = "${file("${path.module}/data/aws_iam_role_policy_masters.kubernetesjipara.com_policy")}"
}

resource "aws_iam_role_policy" "nodes-kubernetesjipara-com" {
  name   = "nodes.kubernetesjipara.com"
  role   = "${aws_iam_role.nodes-kubernetesjipara-com.name}"
  policy = "${file("${path.module}/data/aws_iam_role_policy_nodes.kubernetesjipara.com_policy")}"
}
