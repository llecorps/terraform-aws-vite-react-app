output "alb_dns_name" {
  value = aws_lb.this.dns_name
}

output "http_url" {
  value = "http://${aws_lb.this.dns_name}"
}

output "https_url" {
  value       = var.certificate_arn != "" ? "https://${aws_lb.this.dns_name}" : null
  description = "Present only if certificate_arn was provided"
}

