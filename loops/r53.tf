resource "aws_route53_record" "terraform" {
  for_each = aws_instance.terraform
  zone_id = "var.zone_id"
  name    = "${each.key}-${var.domain_name}" # mongodb.amaranath.fun"
  type    = "A"
  ttl     = 1
  records = [each.value.public_ip]
  allow_overwrite = true
}