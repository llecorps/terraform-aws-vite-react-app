project_name = "my-vite-react-app"
region       = "us-east-1"

# If using ECR in your account:
container_image = "911725061493.dkr.ecr.us-east-1.amazonaws.com/my-vite-react-app"

# Or public GHCR / Docker Hub image:
#container_image = "ghcr.io/youruser/lovable-spa:latest"

desired_count     = 2
health_check_path = "/"
certificate_arn   = "" # or "arn:aws:acm:eu-central-1:123456789012:certificate/...."

environment = {
  VITE_API_BASE = "https://api.example.com"
}

