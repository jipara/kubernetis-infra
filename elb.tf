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
