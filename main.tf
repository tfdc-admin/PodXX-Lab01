# This is a single line comment

/*
This is a comment
that is spanning
multiple lines
*/

/*
terraform {
  required_providers {
    ciscoasa = {
      source = "CiscoDevNet/ciscoasa"
    }
  }
}
*/
/*
provider "ciscoasa" {
  api_url       = "https://10.156.32.198"
  username      = "admin"
  password      = # Provided by the instructor
  ssl_no_verify = true
}
*/
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
/*
/*
data "ciscoasa_interface_physical" "g0" {
  hardware_id = "GigabitEthernet0/0"
  depends_on = [ciscoasa_interface_physical.static]
} 

output "g0" {
  value = data.ciscoasa_interface_physical.g0.name
}
*/
/*
resource "ciscoasa_dhcp_server" "dhcp_test" {
  interface             = data.ciscoasa_interface_physical.g0.name
  enabled               = true
  pool_start_ip         = "172.16.0.2"
  pool_end_ip           = "172.16.0.200"
  // dns_ip_primary        = "8.8.8.8"
  // auto_config_enabled   = false
  // vpn_override          = false
}
*/
