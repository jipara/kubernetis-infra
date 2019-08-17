resource "aws_autoscaling_attachment" "bastions-kubernetesjipara-com" {
  elb                    = "${aws_elb.bastion-kubernetesjipara-com.id}"
  autoscaling_group_name = "${aws_autoscaling_group.bastions-kubernetesjipara-com.id}"
}

resource "aws_autoscaling_attachment" "master-us-east-2a-masters-kubernetesjipara-com" {
  elb                    = "${aws_elb.api-kubernetesjipara-com.id}"
  autoscaling_group_name = "${aws_autoscaling_group.master-us-east-2a-masters-kubernetesjipara-com.id}"
}

resource "aws_autoscaling_attachment" "master-us-east-2b-masters-kubernetesjipara-com" {
  elb                    = "${aws_elb.api-kubernetesjipara-com.id}"
  autoscaling_group_name = "${aws_autoscaling_group.master-us-east-2b-masters-kubernetesjipara-com.id}"
}

resource "aws_autoscaling_attachment" "master-us-east-2c-masters-kubernetesjipara-com" {
  elb                    = "${aws_elb.api-kubernetesjipara-com.id}"
  autoscaling_group_name = "${aws_autoscaling_group.master-us-east-2c-masters-kubernetesjipara-com.id}"
}
