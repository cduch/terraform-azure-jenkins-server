
/*
    Outputs
*/

output "ip_address" {
  value = azurerm_public_ip.publicip.ip_address
  depends_on = [
    azurerm_virtual_machine.vm
  ]
}
