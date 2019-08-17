resource "aws_internet_gateway" "kubernetesjipara-com" {
  vpc_id = "${aws_vpc.kubernetesjipara-com.id}"

  tags = {
    KubernetesCluster                            = "kubernetesjipara.com"
    Name                                         = "kubernetesjipara.com"
    "kubernetes.io/cluster/kubernetesjipara.com" = "owned"
  }
}
