#Project

resource "scaleway_account_project" "ts3-server" {
  name = "ts3-server-${var.env}"
}

resource "scaleway_account_ssh_key" "main" {
  project_id = local.project_id
  name       = "main"
  public_key = file("${path.module}/.ssh/id_ed25519.pub")
}