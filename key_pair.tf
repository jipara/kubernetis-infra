resource "aws_key_pair" "kubernetes-kubernetesjipara-com-cf73ecb8a6fa201f8d64ad669032c485" {
  key_name   = "kubernetes.kubernetesjipara.com-cf:73:ec:b8:a6:fa:20:1f:8d:64:ad:66:90:32:c4:85"
  public_key = "${file("${path.module}/data/aws_key_pair_kubernetes.kubernetesjipara.com-cf73ecb8a6fa201f8d64ad669032c485_public_key")}"
}
