resource "aws_launch_configuration" "bastions-kubernetesjipara-com" {
  name_prefix                 = "bastions.kubernetesjipara.com-"
  image_id                    = "ami-0dd3b1702120579bd"
  instance_type               = "t2.micro"
  key_name                    = "${aws_key_pair.kubernetes-kubernetesjipara-com-cf73ecb8a6fa201f8d64ad669032c485.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.bastions-kubernetesjipara-com.id}"
  security_groups             = ["${aws_security_group.bastion-kubernetesjipara-com.id}"]
  associate_public_ip_address = true

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 32
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}

resource "aws_launch_configuration" "master-us-east-2a-masters-kubernetesjipara-com" {
  name_prefix                 = "master-us-east-2a.masters.kubernetesjipara.com-"
  image_id                    = "ami-0dd3b1702120579bd"
  instance_type               = "m4.large"
  key_name                    = "${aws_key_pair.kubernetes-kubernetesjipara-com-cf73ecb8a6fa201f8d64ad669032c485.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.masters-kubernetesjipara-com.id}"
  security_groups             = ["${aws_security_group.masters-kubernetesjipara-com.id}"]
  associate_public_ip_address = false
  user_data                   = "${file("${path.module}/data/aws_launch_configuration_master-us-east-2a.masters.kubernetesjipara.com_user_data")}"

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 64
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}

resource "aws_launch_configuration" "master-us-east-2b-masters-kubernetesjipara-com" {
  name_prefix                 = "master-us-east-2b.masters.kubernetesjipara.com-"
  image_id                    = "ami-0dd3b1702120579bd"
  instance_type               = "m4.large"
  key_name                    = "${aws_key_pair.kubernetes-kubernetesjipara-com-cf73ecb8a6fa201f8d64ad669032c485.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.masters-kubernetesjipara-com.id}"
  security_groups             = ["${aws_security_group.masters-kubernetesjipara-com.id}"]
  associate_public_ip_address = false
  user_data                   = "${file("${path.module}/data/aws_launch_configuration_master-us-east-2b.masters.kubernetesjipara.com_user_data")}"

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 64
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}

resource "aws_launch_configuration" "master-us-east-2c-masters-kubernetesjipara-com" {
  name_prefix                 = "master-us-east-2c.masters.kubernetesjipara.com-"
  image_id                    = "ami-0dd3b1702120579bd"
  instance_type               = "m4.large"
  key_name                    = "${aws_key_pair.kubernetes-kubernetesjipara-com-cf73ecb8a6fa201f8d64ad669032c485.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.masters-kubernetesjipara-com.id}"
  security_groups             = ["${aws_security_group.masters-kubernetesjipara-com.id}"]
  associate_public_ip_address = false
  user_data                   = "${file("${path.module}/data/aws_launch_configuration_master-us-east-2c.masters.kubernetesjipara.com_user_data")}"

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 64
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}

resource "aws_launch_configuration" "nodes-kubernetesjipara-com" {
  name_prefix                 = "nodes.kubernetesjipara.com-"
  image_id                    = "ami-0dd3b1702120579bd"
  instance_type               = "m4.large"
  key_name                    = "${aws_key_pair.kubernetes-kubernetesjipara-com-cf73ecb8a6fa201f8d64ad669032c485.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.nodes-kubernetesjipara-com.id}"
  security_groups             = ["${aws_security_group.nodes-kubernetesjipara-com.id}"]
  associate_public_ip_address = false
  user_data                   = "${file("${path.module}/data/aws_launch_configuration_nodes.kubernetesjipara.com_user_data")}"

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 128
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}
