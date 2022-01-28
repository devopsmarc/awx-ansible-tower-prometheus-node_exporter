terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

variable "do_token" {}

provider "digitalocean" {
  token = var.do_token
}

resource "digitalocean_droplet" "server" {
  image  = var.image
  name   = "droplet-${var.name}-${var.region}-${count.index + 1}"
  region = var.region
  size   = var.size
  count  = var.droplet_count

  ssh_keys = [data.digitalocean_ssh_key.doctl.id]

  # vpc_uuid = digitalocean_vpc.webserver.id

  tags = ["${var.name}-server"]
}