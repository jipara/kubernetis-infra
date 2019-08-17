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
