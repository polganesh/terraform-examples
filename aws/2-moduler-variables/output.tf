output "lb_address" {
  value = "${aws_instance.my-first-ec2.public_dns}"
}

output "instance_ips" {
  value = ["${aws_instance.my-first-ec2.*.public_ip}"]
}