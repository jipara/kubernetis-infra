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
