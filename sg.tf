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
