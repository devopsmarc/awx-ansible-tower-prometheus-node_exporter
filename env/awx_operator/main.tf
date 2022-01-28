variable "do_token" {
}

module "awx_do" {
  source        = "../../infra"
  image         = "ubuntu-20-04-x64"
  name          = "do-awx"
  region        = "nyc3"
  size          = "s-4vcpu-8gb"
  do_token      = var.do_token
  ssh_key       = "doctl_credential"
  droplet_count = "1"
}

output "Server-name" {
  value = module.awx_do.name
}

output "Server-ipv4" {
  value = module.awx_do.ipv4
}

output "Server-state" {
  value = module.awx_do.state
}

output "Server-region" {
  value = module.awx_do.region
}

output "Server-id" {
  value = module.awx_do.id
}

