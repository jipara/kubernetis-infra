resource "aws_autoscaling_group" "bastions-kubernetesjipara-com" {
  name                 = "bastions.kubernetesjipara.com"
  launch_configuration = "${aws_launch_configuration.bastions-kubernetesjipara-com.id}"
  max_size             = 1
  min_size             = 1
  vpc_zone_identifier  = ["${aws_subnet.utility-us-east-2a-kubernetesjipara-com.id}", "${aws_subnet.utility-us-east-2b-kubernetesjipara-com.id}", "${aws_subnet.utility-us-east-2c-kubernetesjipara-com.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "kubernetesjipara.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "bastions.kubernetesjipara.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "bastions"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/role/bastion"
    value               = "1"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
}

resource "aws_autoscaling_group" "master-us-east-2a-masters-kubernetesjipara-com" {
  name                 = "master-us-east-2a.masters.kubernetesjipara.com"
  launch_configuration = "${aws_launch_configuration.master-us-east-2a-masters-kubernetesjipara-com.id}"
  max_size             = 1
  min_size             = 1
  vpc_zone_identifier  = ["${aws_subnet.us-east-2a-kubernetesjipara-com.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "kubernetesjipara.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "master-us-east-2a.masters.kubernetesjipara.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "master-us-east-2a"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/role/master"
    value               = "1"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
}

resource "aws_autoscaling_group" "master-us-east-2b-masters-kubernetesjipara-com" {
  name                 = "master-us-east-2b.masters.kubernetesjipara.com"
  launch_configuration = "${aws_launch_configuration.master-us-east-2b-masters-kubernetesjipara-com.id}"
  max_size             = 1
  min_size             = 1
  vpc_zone_identifier  = ["${aws_subnet.us-east-2b-kubernetesjipara-com.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "kubernetesjipara.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "master-us-east-2b.masters.kubernetesjipara.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "master-us-east-2b"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/role/master"
    value               = "1"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
}

resource "aws_autoscaling_group" "master-us-east-2c-masters-kubernetesjipara-com" {
  name                 = "master-us-east-2c.masters.kubernetesjipara.com"
  launch_configuration = "${aws_launch_configuration.master-us-east-2c-masters-kubernetesjipara-com.id}"
  max_size             = 1
  min_size             = 1
  vpc_zone_identifier  = ["${aws_subnet.us-east-2c-kubernetesjipara-com.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "kubernetesjipara.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "master-us-east-2c.masters.kubernetesjipara.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "master-us-east-2c"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/role/master"
    value               = "1"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
}

resource "aws_autoscaling_group" "nodes-kubernetesjipara-com" {
  name                 = "nodes.kubernetesjipara.com"
  launch_configuration = "${aws_launch_configuration.nodes-kubernetesjipara-com.id}"
  max_size             = 2
  min_size             = 2
  vpc_zone_identifier  = ["${aws_subnet.us-east-2a-kubernetesjipara-com.id}", "${aws_subnet.us-east-2b-kubernetesjipara-com.id}", "${aws_subnet.us-east-2c-kubernetesjipara-com.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "kubernetesjipara.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "nodes.kubernetesjipara.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "nodes"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/role/node"
    value               = "1"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
}

resource "aws_ebs_volume" "a-etcd-events-kubernetesjipara-com" {
  availability_zone = "us-east-2a"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                            = "kubernetesjipara.com"
    Name                                         = "a.etcd-events.kubernetesjipara.com"
    "k8s.io/etcd/events"                         = "a/a,b,c"
    "k8s.io/role/master"                         = "1"
    "kubernetes.io/cluster/kubernetesjipara.com" = "owned"
  }
}

resource "aws_ebs_volume" "a-etcd-main-kubernetesjipara-com" {
  availability_zone = "us-east-2a"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                            = "kubernetesjipara.com"
    Name                                         = "a.etcd-main.kubernetesjipara.com"
    "k8s.io/etcd/main"                           = "a/a,b,c"
    "k8s.io/role/master"                         = "1"
    "kubernetes.io/cluster/kubernetesjipara.com" = "owned"
  }
}

resource "aws_ebs_volume" "b-etcd-events-kubernetesjipara-com" {
  availability_zone = "us-east-2b"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                            = "kubernetesjipara.com"
    Name                                         = "b.etcd-events.kubernetesjipara.com"
    "k8s.io/etcd/events"                         = "b/a,b,c"
    "k8s.io/role/master"                         = "1"
    "kubernetes.io/cluster/kubernetesjipara.com" = "owned"
  }
}

resource "aws_ebs_volume" "b-etcd-main-kubernetesjipara-com" {
  availability_zone = "us-east-2b"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                            = "kubernetesjipara.com"
    Name                                         = "b.etcd-main.kubernetesjipara.com"
    "k8s.io/etcd/main"                           = "b/a,b,c"
    "k8s.io/role/master"                         = "1"
    "kubernetes.io/cluster/kubernetesjipara.com" = "owned"
  }
}

resource "aws_ebs_volume" "c-etcd-events-kubernetesjipara-com" {
  availability_zone = "us-east-2c"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                            = "kubernetesjipara.com"
    Name                                         = "c.etcd-events.kubernetesjipara.com"
    "k8s.io/etcd/events"                         = "c/a,b,c"
    "k8s.io/role/master"                         = "1"
    "kubernetes.io/cluster/kubernetesjipara.com" = "owned"
  }
}

resource "aws_ebs_volume" "c-etcd-main-kubernetesjipara-com" {
  availability_zone = "us-east-2c"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                            = "kubernetesjipara.com"
    Name                                         = "c.etcd-main.kubernetesjipara.com"
    "k8s.io/etcd/main"                           = "c/a,b,c"
    "k8s.io/role/master"                         = "1"
    "kubernetes.io/cluster/kubernetesjipara.com" = "owned"
  }
}

resource "aws_eip" "us-east-2a-kubernetesjipara-com" {
  vpc = true

  tags = {
    KubernetesCluster                            = "kubernetesjipara.com"
    Name                                         = "us-east-2a.kubernetesjipara.com"
    "kubernetes.io/cluster/kubernetesjipara.com" = "owned"
  }
}

resource "aws_eip" "us-east-2b-kubernetesjipara-com" {
  vpc = true

  tags = {
    KubernetesCluster                            = "kubernetesjipara.com"
    Name                                         = "us-east-2b.kubernetesjipara.com"
    "kubernetes.io/cluster/kubernetesjipara.com" = "owned"
  }
}

resource "aws_eip" "us-east-2c-kubernetesjipara-com" {
  vpc = true

  tags = {
    KubernetesCluster                            = "kubernetesjipara.com"
    Name                                         = "us-east-2c.kubernetesjipara.com"
    "kubernetes.io/cluster/kubernetesjipara.com" = "owned"
  }
}

resource "aws_elb" "api-kubernetesjipara-com" {
  name = "api-kubernetesjipara-com-h1rnf0"

  listener = {
    instance_port     = 443
    instance_protocol = "TCP"
    lb_port           = 443
    lb_protocol       = "TCP"
  }

  security_groups = ["${aws_security_group.api-elb-kubernetesjipara-com.id}"]
  subnets         = ["${aws_subnet.utility-us-east-2a-kubernetesjipara-com.id}", "${aws_subnet.utility-us-east-2b-kubernetesjipara-com.id}", "${aws_subnet.utility-us-east-2c-kubernetesjipara-com.id}"]

  health_check = {
    target              = "SSL:443"
    healthy_threshold   = 2
    unhealthy_threshold = 2
    interval            = 10
    timeout             = 5
  }

  idle_timeout = 300

  tags = {
    KubernetesCluster                            = "kubernetesjipara.com"
    Name                                         = "api.kubernetesjipara.com"
    "kubernetes.io/cluster/kubernetesjipara.com" = "owned"
  }
}

resource "aws_elb" "bastion-kubernetesjipara-com" {
  name = "bastion-kubernetesjipara--vj1s5m"

  listener = {
    instance_port     = 22
    instance_protocol = "TCP"
    lb_port           = 22
    lb_protocol       = "TCP"
  }

  security_groups = ["${aws_security_group.bastion-elb-kubernetesjipara-com.id}"]
  subnets         = ["${aws_subnet.utility-us-east-2a-kubernetesjipara-com.id}", "${aws_subnet.utility-us-east-2b-kubernetesjipara-com.id}", "${aws_subnet.utility-us-east-2c-kubernetesjipara-com.id}"]

  health_check = {
    target              = "TCP:22"
    healthy_threshold   = 2
    unhealthy_threshold = 2
    interval            = 10
    timeout             = 5
  }

  idle_timeout = 300

  tags = {
    KubernetesCluster                            = "kubernetesjipara.com"
    Name                                         = "bastion.kubernetesjipara.com"
    "kubernetes.io/cluster/kubernetesjipara.com" = "owned"
  }
}

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

resource "aws_internet_gateway" "kubernetesjipara-com" {
  vpc_id = "${aws_vpc.kubernetesjipara-com.id}"

  tags = {
    KubernetesCluster                            = "kubernetesjipara.com"
    Name                                         = "kubernetesjipara.com"
    "kubernetes.io/cluster/kubernetesjipara.com" = "owned"
  }
}

resource "aws_key_pair" "kubernetes-kubernetesjipara-com-cf73ecb8a6fa201f8d64ad669032c485" {
  key_name   = "kubernetes.kubernetesjipara.com-cf:73:ec:b8:a6:fa:20:1f:8d:64:ad:66:90:32:c4:85"
  public_key = "${file("${path.module}/data/aws_key_pair_kubernetes.kubernetesjipara.com-cf73ecb8a6fa201f8d64ad669032c485_public_key")}"
}

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

resource "aws_nat_gateway" "us-east-2a-kubernetesjipara-com" {
  allocation_id = "${aws_eip.us-east-2a-kubernetesjipara-com.id}"
  subnet_id     = "${aws_subnet.utility-us-east-2a-kubernetesjipara-com.id}"

  tags = {
    KubernetesCluster                            = "kubernetesjipara.com"
    Name                                         = "us-east-2a.kubernetesjipara.com"
    "kubernetes.io/cluster/kubernetesjipara.com" = "owned"
  }
}

resource "aws_nat_gateway" "us-east-2b-kubernetesjipara-com" {
  allocation_id = "${aws_eip.us-east-2b-kubernetesjipara-com.id}"
  subnet_id     = "${aws_subnet.utility-us-east-2b-kubernetesjipara-com.id}"

  tags = {
    KubernetesCluster                            = "kubernetesjipara.com"
    Name                                         = "us-east-2b.kubernetesjipara.com"
    "kubernetes.io/cluster/kubernetesjipara.com" = "owned"
  }
}

resource "aws_nat_gateway" "us-east-2c-kubernetesjipara-com" {
  allocation_id = "${aws_eip.us-east-2c-kubernetesjipara-com.id}"
  subnet_id     = "${aws_subnet.utility-us-east-2c-kubernetesjipara-com.id}"

  tags = {
    KubernetesCluster                            = "kubernetesjipara.com"
    Name                                         = "us-east-2c.kubernetesjipara.com"
    "kubernetes.io/cluster/kubernetesjipara.com" = "owned"
  }
}

resource "aws_route" "0-0-0-0--0" {
  route_table_id         = "${aws_route_table.kubernetesjipara-com.id}"
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = "${aws_internet_gateway.kubernetesjipara-com.id}"
}

resource "aws_route" "private-us-east-2a-0-0-0-0--0" {
  route_table_id         = "${aws_route_table.private-us-east-2a-kubernetesjipara-com.id}"
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = "${aws_nat_gateway.us-east-2a-kubernetesjipara-com.id}"
}

resource "aws_route" "private-us-east-2b-0-0-0-0--0" {
  route_table_id         = "${aws_route_table.private-us-east-2b-kubernetesjipara-com.id}"
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = "${aws_nat_gateway.us-east-2b-kubernetesjipara-com.id}"
}

resource "aws_route" "private-us-east-2c-0-0-0-0--0" {
  route_table_id         = "${aws_route_table.private-us-east-2c-kubernetesjipara-com.id}"
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = "${aws_nat_gateway.us-east-2c-kubernetesjipara-com.id}"
}

resource "aws_route53_record" "api-kubernetesjipara-com" {
  name = "api.kubernetesjipara.com"
  type = "A"

  alias = {
    name                   = "${aws_elb.api-kubernetesjipara-com.dns_name}"
    zone_id                = "${aws_elb.api-kubernetesjipara-com.zone_id}"
    evaluate_target_health = false
  }

  zone_id = "/hostedzone/Z39I686TO3G39V"
}

resource "aws_route53_record" "bastion-kubernetesjipara-com" {
  name = "bastion.kubernetesjipara.com"
  type = "A"

  alias = {
    name                   = "${aws_elb.bastion-kubernetesjipara-com.dns_name}"
    zone_id                = "${aws_elb.bastion-kubernetesjipara-com.zone_id}"
    evaluate_target_health = false
  }

  zone_id = "/hostedzone/Z39I686TO3G39V"
}

resource "aws_route53_zone_association" "Z39I686TO3G39V" {
  zone_id = "/hostedzone/Z39I686TO3G39V"
  vpc_id  = "${aws_vpc.kubernetesjipara-com.id}"
}

resource "aws_route_table" "kubernetesjipara-com" {
  vpc_id = "${aws_vpc.kubernetesjipara-com.id}"

  tags = {
    KubernetesCluster                            = "kubernetesjipara.com"
    Name                                         = "kubernetesjipara.com"
    "kubernetes.io/cluster/kubernetesjipara.com" = "owned"
    "kubernetes.io/kops/role"                    = "public"
  }
}

resource "aws_route_table" "private-us-east-2a-kubernetesjipara-com" {
  vpc_id = "${aws_vpc.kubernetesjipara-com.id}"

  tags = {
    KubernetesCluster                            = "kubernetesjipara.com"
    Name                                         = "private-us-east-2a.kubernetesjipara.com"
    "kubernetes.io/cluster/kubernetesjipara.com" = "owned"
    "kubernetes.io/kops/role"                    = "private-us-east-2a"
  }
}

resource "aws_route_table" "private-us-east-2b-kubernetesjipara-com" {
  vpc_id = "${aws_vpc.kubernetesjipara-com.id}"

  tags = {
    KubernetesCluster                            = "kubernetesjipara.com"
    Name                                         = "private-us-east-2b.kubernetesjipara.com"
    "kubernetes.io/cluster/kubernetesjipara.com" = "owned"
    "kubernetes.io/kops/role"                    = "private-us-east-2b"
  }
}

resource "aws_route_table" "private-us-east-2c-kubernetesjipara-com" {
  vpc_id = "${aws_vpc.kubernetesjipara-com.id}"

  tags = {
    KubernetesCluster                            = "kubernetesjipara.com"
    Name                                         = "private-us-east-2c.kubernetesjipara.com"
    "kubernetes.io/cluster/kubernetesjipara.com" = "owned"
    "kubernetes.io/kops/role"                    = "private-us-east-2c"
  }
}

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

resource "aws_security_group" "api-elb-kubernetesjipara-com" {
  name        = "api-elb.kubernetesjipara.com"
  vpc_id      = "${aws_vpc.kubernetesjipara-com.id}"
  description = "Security group for api ELB"

  tags = {
    KubernetesCluster                            = "kubernetesjipara.com"
    Name                                         = "api-elb.kubernetesjipara.com"
    "kubernetes.io/cluster/kubernetesjipara.com" = "owned"
  }
}

resource "aws_security_group" "bastion-elb-kubernetesjipara-com" {
  name        = "bastion-elb.kubernetesjipara.com"
  vpc_id      = "${aws_vpc.kubernetesjipara-com.id}"
  description = "Security group for bastion ELB"

  tags = {
    KubernetesCluster                            = "kubernetesjipara.com"
    Name                                         = "bastion-elb.kubernetesjipara.com"
    "kubernetes.io/cluster/kubernetesjipara.com" = "owned"
  }
}

resource "aws_security_group" "bastion-kubernetesjipara-com" {
  name        = "bastion.kubernetesjipara.com"
  vpc_id      = "${aws_vpc.kubernetesjipara-com.id}"
  description = "Security group for bastion"

  tags = {
    KubernetesCluster                            = "kubernetesjipara.com"
    Name                                         = "bastion.kubernetesjipara.com"
    "kubernetes.io/cluster/kubernetesjipara.com" = "owned"
  }
}

resource "aws_security_group" "masters-kubernetesjipara-com" {
  name        = "masters.kubernetesjipara.com"
  vpc_id      = "${aws_vpc.kubernetesjipara-com.id}"
  description = "Security group for masters"

  tags = {
    KubernetesCluster                            = "kubernetesjipara.com"
    Name                                         = "masters.kubernetesjipara.com"
    "kubernetes.io/cluster/kubernetesjipara.com" = "owned"
  }
}

resource "aws_security_group" "nodes-kubernetesjipara-com" {
  name        = "nodes.kubernetesjipara.com"
  vpc_id      = "${aws_vpc.kubernetesjipara-com.id}"
  description = "Security group for nodes"

  tags = {
    KubernetesCluster                            = "kubernetesjipara.com"
    Name                                         = "nodes.kubernetesjipara.com"
    "kubernetes.io/cluster/kubernetesjipara.com" = "owned"
  }
}

resource "aws_security_group_rule" "all-master-to-master" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-kubernetesjipara-com.id}"
  source_security_group_id = "${aws_security_group.masters-kubernetesjipara-com.id}"
  from_port                = 0
  to_port                  = 0
  protocol                 = "-1"
}

resource "aws_security_group_rule" "all-master-to-node" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.nodes-kubernetesjipara-com.id}"
  source_security_group_id = "${aws_security_group.masters-kubernetesjipara-com.id}"
  from_port                = 0
  to_port                  = 0
  protocol                 = "-1"
}

resource "aws_security_group_rule" "all-node-to-node" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.nodes-kubernetesjipara-com.id}"
  source_security_group_id = "${aws_security_group.nodes-kubernetesjipara-com.id}"
  from_port                = 0
  to_port                  = 0
  protocol                 = "-1"
}

resource "aws_security_group_rule" "api-elb-egress" {
  type              = "egress"
  security_group_id = "${aws_security_group.api-elb-kubernetesjipara-com.id}"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "bastion-egress" {
  type              = "egress"
  security_group_id = "${aws_security_group.bastion-kubernetesjipara-com.id}"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "bastion-elb-egress" {
  type              = "egress"
  security_group_id = "${aws_security_group.bastion-elb-kubernetesjipara-com.id}"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "bastion-to-master-ssh" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-kubernetesjipara-com.id}"
  source_security_group_id = "${aws_security_group.bastion-kubernetesjipara-com.id}"
  from_port                = 22
  to_port                  = 22
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "bastion-to-node-ssh" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.nodes-kubernetesjipara-com.id}"
  source_security_group_id = "${aws_security_group.bastion-kubernetesjipara-com.id}"
  from_port                = 22
  to_port                  = 22
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "https-api-elb-0-0-0-0--0" {
  type              = "ingress"
  security_group_id = "${aws_security_group.api-elb-kubernetesjipara-com.id}"
  from_port         = 443
  to_port           = 443
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "https-elb-to-master" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-kubernetesjipara-com.id}"
  source_security_group_id = "${aws_security_group.api-elb-kubernetesjipara-com.id}"
  from_port                = 443
  to_port                  = 443
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "icmp-pmtu-api-elb-0-0-0-0--0" {
  type              = "ingress"
  security_group_id = "${aws_security_group.api-elb-kubernetesjipara-com.id}"
  from_port         = 3
  to_port           = 4
  protocol          = "icmp"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "master-egress" {
  type              = "egress"
  security_group_id = "${aws_security_group.masters-kubernetesjipara-com.id}"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "node-egress" {
  type              = "egress"
  security_group_id = "${aws_security_group.nodes-kubernetesjipara-com.id}"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "node-to-master-tcp-1-2379" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-kubernetesjipara-com.id}"
  source_security_group_id = "${aws_security_group.nodes-kubernetesjipara-com.id}"
  from_port                = 1
  to_port                  = 2379
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "node-to-master-tcp-2382-4000" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-kubernetesjipara-com.id}"
  source_security_group_id = "${aws_security_group.nodes-kubernetesjipara-com.id}"
  from_port                = 2382
  to_port                  = 4000
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "node-to-master-tcp-4003-65535" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-kubernetesjipara-com.id}"
  source_security_group_id = "${aws_security_group.nodes-kubernetesjipara-com.id}"
  from_port                = 4003
  to_port                  = 65535
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "node-to-master-udp-1-65535" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-kubernetesjipara-com.id}"
  source_security_group_id = "${aws_security_group.nodes-kubernetesjipara-com.id}"
  from_port                = 1
  to_port                  = 65535
  protocol                 = "udp"
}

resource "aws_security_group_rule" "ssh-elb-to-bastion" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.bastion-kubernetesjipara-com.id}"
  source_security_group_id = "${aws_security_group.bastion-elb-kubernetesjipara-com.id}"
  from_port                = 22
  to_port                  = 22
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "ssh-external-to-bastion-elb-0-0-0-0--0" {
  type              = "ingress"
  security_group_id = "${aws_security_group.bastion-elb-kubernetesjipara-com.id}"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_subnet" "us-east-2a-kubernetesjipara-com" {
  vpc_id            = "${aws_vpc.kubernetesjipara-com.id}"
  cidr_block        = "172.20.32.0/19"
  availability_zone = "us-east-2a"

  tags = {
    KubernetesCluster                            = "kubernetesjipara.com"
    Name                                         = "us-east-2a.kubernetesjipara.com"
    SubnetType                                   = "Private"
    "kubernetes.io/cluster/kubernetesjipara.com" = "owned"
    "kubernetes.io/role/internal-elb"            = "1"
  }
}

resource "aws_subnet" "us-east-2b-kubernetesjipara-com" {
  vpc_id            = "${aws_vpc.kubernetesjipara-com.id}"
  cidr_block        = "172.20.64.0/19"
  availability_zone = "us-east-2b"

  tags = {
    KubernetesCluster                            = "kubernetesjipara.com"
    Name                                         = "us-east-2b.kubernetesjipara.com"
    SubnetType                                   = "Private"
    "kubernetes.io/cluster/kubernetesjipara.com" = "owned"
    "kubernetes.io/role/internal-elb"            = "1"
  }
}

resource "aws_subnet" "us-east-2c-kubernetesjipara-com" {
  vpc_id            = "${aws_vpc.kubernetesjipara-com.id}"
  cidr_block        = "172.20.96.0/19"
  availability_zone = "us-east-2c"

  tags = {
    KubernetesCluster                            = "kubernetesjipara.com"
    Name                                         = "us-east-2c.kubernetesjipara.com"
    SubnetType                                   = "Private"
    "kubernetes.io/cluster/kubernetesjipara.com" = "owned"
    "kubernetes.io/role/internal-elb"            = "1"
  }
}

resource "aws_subnet" "utility-us-east-2a-kubernetesjipara-com" {
  vpc_id            = "${aws_vpc.kubernetesjipara-com.id}"
  cidr_block        = "172.20.0.0/22"
  availability_zone = "us-east-2a"

  tags = {
    KubernetesCluster                            = "kubernetesjipara.com"
    Name                                         = "utility-us-east-2a.kubernetesjipara.com"
    SubnetType                                   = "Utility"
    "kubernetes.io/cluster/kubernetesjipara.com" = "owned"
    "kubernetes.io/role/elb"                     = "1"
  }
}

resource "aws_subnet" "utility-us-east-2b-kubernetesjipara-com" {
  vpc_id            = "${aws_vpc.kubernetesjipara-com.id}"
  cidr_block        = "172.20.4.0/22"
  availability_zone = "us-east-2b"

  tags = {
    KubernetesCluster                            = "kubernetesjipara.com"
    Name                                         = "utility-us-east-2b.kubernetesjipara.com"
    SubnetType                                   = "Utility"
    "kubernetes.io/cluster/kubernetesjipara.com" = "owned"
    "kubernetes.io/role/elb"                     = "1"
  }
}

resource "aws_subnet" "utility-us-east-2c-kubernetesjipara-com" {
  vpc_id            = "${aws_vpc.kubernetesjipara-com.id}"
  cidr_block        = "172.20.8.0/22"
  availability_zone = "us-east-2c"

  tags = {
    KubernetesCluster                            = "kubernetesjipara.com"
    Name                                         = "utility-us-east-2c.kubernetesjipara.com"
    SubnetType                                   = "Utility"
    "kubernetes.io/cluster/kubernetesjipara.com" = "owned"
    "kubernetes.io/role/elb"                     = "1"
  }
}

resource "aws_vpc" "kubernetesjipara-com" {
  cidr_block           = "172.20.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    KubernetesCluster                            = "kubernetesjipara.com"
    Name                                         = "kubernetesjipara.com"
    "kubernetes.io/cluster/kubernetesjipara.com" = "owned"
  }
}

resource "aws_vpc_dhcp_options" "kubernetesjipara-com" {
  domain_name         = "us-east-2.compute.internal"
  domain_name_servers = ["AmazonProvidedDNS"]

  tags = {
    KubernetesCluster                            = "kubernetesjipara.com"
    Name                                         = "kubernetesjipara.com"
    "kubernetes.io/cluster/kubernetesjipara.com" = "owned"
  }
}

resource "aws_vpc_dhcp_options_association" "kubernetesjipara-com" {
  vpc_id          = "${aws_vpc.kubernetesjipara-com.id}"
  dhcp_options_id = "${aws_vpc_dhcp_options.kubernetesjipara-com.id}"
}

