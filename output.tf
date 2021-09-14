
/*
    Outputs
*/

output "ip_address" {
  value = "http://${azurerm_public_ip.publicip.ip_address}:8080"
  depends_on = [
    azurerm_virtual_machine.vm
  ]
}
