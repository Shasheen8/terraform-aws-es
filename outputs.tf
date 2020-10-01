output "security_group_id" {
  value       = join("", aws_security_group.this.*.id)
  description = "Security Group ID to control access to the Elasticsearch domain"
}

output "domain_arn" {
  value       = join("", aws_elasticsearch_domain.default.*.arn)
  description = "ARN of the Elasticsearch domain"
}

output "domain_id" {
  value       = join("", aws_elasticsearch_domain.default.*.domain_id)
  description = "Unique identifier for the Elasticsearch domain"
}

output "domain_name" {
  value       = join("", aws_elasticsearch_domain.default.*.domain_name)
  description = "Name of the Elasticsearch domain"
}

output "domain_endpoint" {
  value       = join("", aws_elasticsearch_domain.default.*.endpoint)
  description = "Domain-specific endpoint used to submit index, search, and data upload requests"
}

output "kibana_endpoint" {
  value       = join("", aws_elasticsearch_domain.default.*.kibana_endpoint)
  description = "Domain-specific endpoint for Kibana without https scheme"
}

output "domain_hostname" {
  value       = var.elasticsearch_subdomain_name
  description = "Elasticsearch domain hostname to submit index, search, and data upload requests"
}

output "kibana_hostname" {
  value       = var.kibana_subdomain_name
  description = "Kibana hostname"
}

output "elasticsearch_user_iam_role_name" {
  value       = join(",", aws_iam_role.elasticsearch_user.*.name)
  description = "The name of the IAM role to allow access to Elasticsearch cluster"
}

output "elasticsearch_user_iam_role_arn" {
  value       = join(",", aws_iam_role.elasticsearch_user.*.arn)
  description = "The ARN of the IAM role to allow access to Elasticsearch cluster"
}