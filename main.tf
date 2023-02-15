# --- examples/basic/main.tf ---

# Calling the CloudWAN Module - we are creating both the Global Network and the Core Network
module "cloud_wan" {
  source  = "aws-ia/cloudwan/aws"
  version = "1.0.0"

  global_network = {
    create      = true
    description = "Global Network - ${var.identifier}"
  }

  core_network = {
    description     = "Core Network - ${var.identifier}"
    policy_document = data.aws_networkmanager_core_network_policy_document.policy.json
  }

  tags = {
    Name = var.identifier
  }
}

