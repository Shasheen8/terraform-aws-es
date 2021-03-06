# terraform-aws-es

[![open-issues](https://img.shields.io/github/issues-raw/insight-infrastructure/terraform-aws-es?style=for-the-badge)](https://github.com/insight-infrastructure/terraform-aws-es/issues)
[![open-pr](https://img.shields.io/github/issues-pr-raw/insight-infrastructure/terraform-aws-es?style=for-the-badge)](https://github.com/insight-infrastructure/terraform-aws-es/pulls)

## Features

This module...

## Terraform Versions

For Terraform v0.12.0+

## Usage

```hcl
module "this" {
  source 	  = "github.com/insight-infrastructure/terraform-aws-es"
  id          = "es" # random identifier
  domain_name = "insight-infra.net"
}
```
## Examples

- [defaults](https://github.com/insight-infrastructure/terraform-aws-es/tree/master/examples/defaults)

## Known  Issues
No issue is creating limit on this module.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Providers

| Name | Version |
|------|---------|
| aws | n/a |
| null | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| additional\_security\_groups | List of additional security group IDs to be allowed to connect to the cluster | `list(string)` | `[]` | no |
| advanced\_options | Key-value string pairs to specify advanced configuration options | `map(string)` | `{}` | no |
| advanced\_security\_options\_enabled | AWS Elasticsearch Kibana enchanced security plugin enabling (forces new resource) | `bool` | `false` | no |
| advanced\_security\_options\_internal\_user\_database\_enabled | Whether to enable or not internal Kibana user database for ELK OpenDistro security plugin | `bool` | `false` | no |
| advanced\_security\_options\_master\_user\_arn | ARN of IAM user who is to be mapped to be Kibana master user (applicable if advanced\_security\_options\_internal\_user\_database\_enabled set to false) | `string` | `""` | no |
| advanced\_security\_options\_master\_user\_name | Master user username (applicable if advanced\_security\_options\_internal\_user\_database\_enabled set to true) | `string` | `""` | no |
| advanced\_security\_options\_master\_user\_password | Master user password (applicable if advanced\_security\_options\_internal\_user\_database\_enabled set to true) | `string` | `""` | no |
| allowed\_cidr\_blocks | List of CIDR blocks to be allowed to connect to the cluster | `list(string)` | `[]` | no |
| automated\_snapshot\_start\_hour | Hour at which automated snapshots are taken, in UTC | `number` | `0` | no |
| availability\_zone\_count | Number of Availability Zones for the domain to use. | `number` | `2` | no |
| aws\_ec2\_service\_name | AWS EC2 Service Name | `list(string)` | <pre>[<br>  "ec2.amazonaws.com"<br>]</pre> | no |
| cognito\_iam\_role\_arn | ARN of the IAM role that has the AmazonESCognitoAccess policy attached | `string` | `""` | no |
| cognito\_identity\_pool\_id | The ID of the Cognito Identity Pool to use | `string` | `""` | no |
| cognito\_user\_pool\_id | The ID of the Cognito User Pool to use | `string` | `""` | no |
| create\_iam\_service\_linked\_role | Whether to create `AWSServiceRoleForAmazonElasticsearchService` service-linked role. Set it to `false` if you already have an ElasticSearch cluster created in the AWS account and AWSServiceRoleForAmazonElasticsearchService already exists. See https://github.com/terraform-providers/terraform-provider-aws/issues/5218 for more info | `bool` | `true` | no |
| dedicated\_master\_count | Number of dedicated master nodes in the cluster | `number` | `0` | no |
| dedicated\_master\_enabled | Indicates whether dedicated master nodes are enabled for the cluster | `bool` | `false` | no |
| dedicated\_master\_type | Instance type of the dedicated master nodes in the cluster | `string` | `"t2.small.elasticsearch"` | no |
| domain\_endpoint\_options\_enforce\_https | Whether or not to require HTTPS | `bool` | `false` | no |
| domain\_endpoint\_options\_tls\_security\_policy | The name of the TLS security policy that needs to be applied to the HTTPS endpoint | `string` | `"Policy-Min-TLS-1-0-2019-07"` | no |
| domain\_hostname\_enabled | Explicit flag to enable creating a DNS hostname for ES. If `true`, then `var.dns_zone_id` is required. | `bool` | `false` | no |
| domain\_name | Hosted zone domain name | `string` | `""` | no |
| ebs\_iops | The baseline input/output (I/O) performance of EBS volumes attached to data nodes. Applicable only for the Provisioned IOPS EBS volume type | `number` | `0` | no |
| ebs\_volume\_size | EBS volumes for data storage in GB | `number` | `10` | no |
| ebs\_volume\_type | Storage type of EBS volumes | `string` | `"gp2"` | no |
| elasticsearch\_subdomain\_name | The name of the subdomain for Elasticsearch in the DNS zone (\_e.g._ `elasticsearch`, `ui`, `ui-es`, `search-ui`) | `string` | `"es"` | no |
| elasticsearch\_version | Version of Elasticsearch to deploy (\_e.g._ `7.4`, `7.1`, `6.8`, `6.7`, `6.5`, `6.4`, `6.3`, `6.2`, `6.0`, `5.6`, `5.5`, `5.3`, `5.1`, `2.3`, `1.5` | `string` | `"7.4"` | no |
| encrypt\_at\_rest\_enabled | Whether to enable encryption at rest | `bool` | `true` | no |
| encrypt\_at\_rest\_kms\_key\_id | The KMS key ID to encrypt the Elasticsearch domain with. If not specified, then it defaults to using the AWS/Elasticsearch service KMS key | `string` | `""` | no |
| iam\_actions | List of actions to allow for the IAM roles, _e.g._ `es:ESHttpGet`, `es:ESHttpPut`, `es:ESHttpPost` | `list(string)` | `[]` | no |
| iam\_authorizing\_role\_arns | List of IAM role ARNs to permit to assume the Elasticsearch user role | `list(string)` | `[]` | no |
| iam\_role\_arns | List of IAM role ARNs to permit access to the Elasticsearch domain | `list(string)` | `[]` | no |
| iam\_role\_max\_session\_duration | The maximum session duration (in seconds) for the user role. Can have a value from 1 hour to 12 hours | `number` | `3600` | no |
| id | ###### Label ###### | `any` | n/a | yes |
| instance\_count | Number of data nodes in the cluster | `number` | `4` | no |
| instance\_type | Elasticsearch instance type for data nodes in the cluster | `string` | `"t3.small.elasticsearch"` | no |
| kibana\_hostname\_enabled | Explicit flag to enable creating a DNS hostname for Kibana. If `true`, then `var.dns_zone_id` is required. | `bool` | `false` | no |
| kibana\_subdomain\_name | The name of the subdomain for Kibana in the DNS zone (\_e.g._ `kibana`, `ui`, `ui-es`, `search-ui`, `kibana.elasticsearch`) | `string` | `"kibana"` | no |
| log\_publishing\_application\_cloudwatch\_log\_group\_arn | ARN of the CloudWatch log group to which log for ES\_APPLICATION\_LOGS needs to be published | `string` | `""` | no |
| log\_publishing\_index\_cloudwatch\_log\_group\_arn | ARN of the CloudWatch log group to which log for INDEX\_SLOW\_LOGS needs to be published | `string` | `""` | no |
| log\_publishing\_index\_enabled | Specifies whether log publishing option for INDEX\_SLOW\_LOGS is enabled or not | `bool` | `false` | no |
| log\_publishing\_search\_cloudwatch\_log\_group\_arn | ARN of the CloudWatch log group to which log for SEARCH\_SLOW\_LOGS needs to be published | `string` | `""` | no |
| node\_to\_node\_encryption\_enabled | Whether to enable node-to-node encryption | `bool` | `false` | no |
| private\_cidr\_blocks | List of allowed cidr blocks for private\_ports | `list(number)` | `[]` | no |
| private\_ports | Open allowed port range with private cidr blocks | `list(number)` | `[]` | no |
| public\_ports | Open allowed port range. (e.g. `443`) | `list(number)` | `[]` | no |
| subnet\_ids | VPC Subnet IDs | `list(string)` | `[]` | no |
| tags | Tags | `map(string)` | `{}` | no |
| ttl | TTL for dns records | `number` | `60` | no |
| vpc\_id | VPC ID | `string` | n/a | yes |
| warm\_count | Number of UltraWarm nodes | `number` | `2` | no |
| warm\_enabled | Whether AWS UltraWarm is enabled | `bool` | `false` | no |
| warm\_type | Type of UltraWarm nodes | `string` | `"ultrawarm1.medium.elasticsearch"` | no |
| zone\_awareness\_enabled | Enable zone awareness for Elasticsearch cluster | `bool` | `true` | no |

## Outputs

| Name | Description |
|------|-------------|
| domain\_arn | ARN of the Elasticsearch domain |
| domain\_endpoint | Domain-specific endpoint used to submit index, search, and data upload requests |
| domain\_hostname | Elasticsearch domain hostname to submit index, search, and data upload requests |
| domain\_id | Unique identifier for the Elasticsearch domain |
| domain\_name | Name of the Elasticsearch domain |
| elasticsearch\_user\_iam\_role\_arn | The ARN of the IAM role to allow access to Elasticsearch cluster |
| elasticsearch\_user\_iam\_role\_name | The name of the IAM role to allow access to Elasticsearch cluster |
| kibana\_endpoint | Domain-specific endpoint for Kibana without https scheme |
| kibana\_hostname | Kibana hostname |
| security\_group\_id | Security Group ID to control access to the Elasticsearch domain |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Testing
This module has been packaged with terratest tests

To run them:

1. Install Go
2. Run `make test-init` from the root of this repo
3. Run `make test` again from root

## Authors

Module managed by [insight-infrastructure](https://github.com/insight-infrastructure)

## Credits

- [Anton Babenko](https://github.com/antonbabenko)

## License

Apache 2 Licensed. See LICENSE for full details.