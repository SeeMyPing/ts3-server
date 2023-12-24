#DNS Record

resource "scaleway_domain_record" "ts3-server" {
  dns_zone   = "seemyping.xyz"
  name       = "ts3"
  type       = "A"
  data       = scaleway_instance_server.ts3-server.public_ip
  ttl        = 3600
  depends_on = [scaleway_instance_server.ts3-server]
}