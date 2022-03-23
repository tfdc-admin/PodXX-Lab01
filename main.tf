# This is a single line comment

/*
This is a comment
that is spanning
multiple lines
*/


terraform {
  required_providers {
    ciscoasa = {
      source = "CiscoDevNet/ciscoasa"
    }
  }
}


provider "ciscoasa" {
  api_url       = var.url
  username      = var.username
  password      = var.password
  ssl_no_verify = true
}

/*
resource "ciscoasa_interface_physical" "static" {
  name           = "inside"
  hardware_id    = "GigabitEthernet0/0"
  interface_desc = "Static IP"
  ip_address {
    static {
      ip       = "172.16.0.1"
      net_mask = "255.255.255.0"
    }
  }
  security_level = 0
  shutdown = false
}
*/
/*
data "ciscoasa_interface_physical" "g0" {
  hardware_id = "GigabitEthernet0/0"
} 

resource "ciscoasa_dhcp_server" "dhcp_test" {
  interface             = data.ciscoasa_interface_physical.g0.name
  enabled               = true
  pool_start_ip         = "172.16.0.2"
  pool_end_ip           = "172.16.0.200"
}
*/
/*
resource "ciscoasa_access_in_rules" "no_telnet" {
  interface = data.ciscoasa_interface_physical.g0.name
  rule {
    source = "0.0.0.0/0"
    source_service = "tcp/23"
    destination = "0.0.0.0/0"
    destination_service = "tcp/23"
    permit = false
  }
}
*/