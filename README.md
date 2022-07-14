<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.2.2 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 3.71.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws.cluster"></a> [aws.cluster](#provider\_aws.cluster) | ~> 3.71.0 |
| <a name="provider_aws.parent"></a> [aws.parent](#provider\_aws.parent) | ~> 3.71.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_route53_record.name_servers](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record) | resource |
| [aws_route53_zone.cluster](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_zone) | resource |
| [aws_route53_zone.parent](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/route53_zone) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_domain_name"></a> [domain\_name](#input\_domain\_name) | The DNS zone name | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_route53_zone_arn"></a> [route53\_zone\_arn](#output\_route53\_zone\_arn) | ARN for the cluster route 53 zone |
| <a name="output_route53_zone_id"></a> [route53\_zone\_id](#output\_route53\_zone\_id) | ID for the cluster route 53 zone |
<!-- END_TF_DOCS -->