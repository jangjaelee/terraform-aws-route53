resource "aws_route53_zone" "r53-public" {
  name          = var.public_domain_name
  comment       = "VPC Public DNS for ${var.public_domain_name}"
  force_destroy = true

  tags = {
    Name = var.public_domain_name
  }
}

#resource "aws_route53_recored" "awx-www" {
#  zone_id = aws_route53_zone.r53-public.id
#  name    = "" 
#  type    = "A"
#  ttl     = "60"
#  #records = aws_eip.
#}
