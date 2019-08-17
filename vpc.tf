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

