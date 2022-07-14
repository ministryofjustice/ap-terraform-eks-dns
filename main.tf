###############################################################################
# Cluster hosted zone
###############################################################################
resource "aws_route53_zone" "cluster" {
  name = var.domain_name

  provider = aws.cluster
}

###############################################################################
# Create nameserver entries for the cluster zone in the parent zone
###############################################################################
locals {
  elems         = split(".", var.domain_name)
  parent_domain = join(".", slice(local.elems, 1, length(local.elems)))
}

data "aws_route53_zone" "parent" {
  name         = local.parent_domain
  provider = aws.parent
}

resource "aws_route53_record" "name_servers" {
  zone_id = data.aws_route53_zone.parent.zone_id
  name    = aws_route53_zone.cluster.name
  type    = "NS"
  ttl     = "30"
  records = aws_route53_zone.cluster.name_servers

  provider = aws.parent
}
