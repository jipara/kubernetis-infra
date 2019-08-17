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
