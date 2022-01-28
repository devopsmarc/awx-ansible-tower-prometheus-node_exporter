data "digitalocean_ssh_key" "doctl" {
  name = var.ssh_key
}