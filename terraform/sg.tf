#Security Group

resource "scaleway_instance_security_group" "ts3" {
  project_id = local.project_id

  inbound_default_policy  = "drop"
  outbound_default_policy = "accept"

  inbound_rule {
    action = "accept"
    port   = "22"
  }

  inbound_rule {
    action   = "accept"
    port     = "9987"
    protocol = "UDP"
  }

  inbound_rule {
    action   = "accept"
    port     = "30033"
    protocol = "TCP"
  }

}