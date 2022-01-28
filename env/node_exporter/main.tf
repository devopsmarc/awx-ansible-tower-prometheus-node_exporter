variable "do_token" {
}

module "np_do" {
  source        = "../../infra"
  image         = "ubuntu-20-04-x64"
  name          = "do"
  region        = "nyc3"
  size          = "s-1vcpu-1gb"
  do_token      = var.do_token
  ssh_key       = "doctl_credential"
  droplet_count = "1"
}

output "Server-name" {
  value = module.np_do.name
}

output "Server-ipv4" {
  value = module.np_do.ipv4
}

output "Server-state" {
  value = module.np_do.state
}

output "Server-region" {
  value = module.np_do.region
}

output "Server-id" {
  value = module.np_do.id
}

