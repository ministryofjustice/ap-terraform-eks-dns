output "route53_zone_arn" {
  description = "ARN for the cluster route 53 zone"
  value       = aws_route53_zone.cluster.arn
}

output "route53_zone_id" {
  description = "ID for the cluster route 53 zone"
  value       = aws_route53_zone.cluster.zone_id
}
