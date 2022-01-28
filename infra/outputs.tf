output "name" {
  value = digitalocean_droplet.server.*.name
}

output "ipv4" {
  value = digitalocean_droplet.server.*.ipv4_address
}

output "state" {
  value = digitalocean_droplet.server.*.status
}

output "region" {
  value = digitalocean_droplet.server.*.region
}

output "id" {
  value = digitalocean_droplet.server.*.id
}