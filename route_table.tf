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

