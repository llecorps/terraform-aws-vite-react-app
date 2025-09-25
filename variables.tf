variable "project_name" {
  description = "Name prefix for resources"
  type        = string
}

variable "region" {
  description = "AWS region"
  type        = string
}

variable "vpc_cidr" {
  description = "VPC CIDR"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnets" {
  description = "Two public subnet CIDRs"
  type        = list(string)
  default     = ["10.0.0.0/24", "10.0.1.0/24"]
}

variable "container_image" {
  description = "Container image (ECR or public registry)"
  type        = string
}

variable "container_port" {
  description = "Container port"
  type        = number
  default     = 80
}

variable "desired_count" {
  description = "ECS desired tasks"
  type        = number
  default     = 2
}

variable "cpu" {
  description = "Fargate task CPU units (256=0.25 vCPU)"
  type        = number
  default     = 256
}

variable "memory" {
  description = "Fargate task memory (MB)"
  type        = number
  default     = 512
}

variable "health_check_path" {
  description = "ALB health check path"
  type        = string
  default     = "/"
}

variable "certificate_arn" {
  description = "ACM cert ARN (leave empty for HTTP only)"
  type        = string
  default     = ""
}

variable "environment" {
  description = "App env vars (key/value)"
  type        = map(string)
  default     = {}
}

# Optional autoscaling
variable "autoscaling_min" {
  type    = number
  default = 1
}

variable "autoscaling_max" {
  type    = number
  default = 4
}

variable "autoscaling_cpu_target" {
  type    = number
  default = 50
}

