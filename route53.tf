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
