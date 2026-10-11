output "service_principal_certificates_id" {
  description = "Map of id values across all service_principal_certificates, keyed the same as var.service_principal_certificates"
  value       = { for k, v in azuread_service_principal_certificate.service_principal_certificates : k => v.id if v.id != null && length(v.id) > 0 }
}
output "service_principal_certificates_encoding" {
  description = "Map of encoding values across all service_principal_certificates, keyed the same as var.service_principal_certificates"
  value       = { for k, v in azuread_service_principal_certificate.service_principal_certificates : k => v.encoding if v.encoding != null && length(v.encoding) > 0 }
}
output "service_principal_certificates_end_date" {
  description = "Map of end_date values across all service_principal_certificates, keyed the same as var.service_principal_certificates"
  value       = { for k, v in azuread_service_principal_certificate.service_principal_certificates : k => v.end_date if v.end_date != null && length(v.end_date) > 0 }
}
output "service_principal_certificates_end_date_relative" {
  description = "Map of end_date_relative values across all service_principal_certificates, keyed the same as var.service_principal_certificates"
  value       = { for k, v in azuread_service_principal_certificate.service_principal_certificates : k => v.end_date_relative if v.end_date_relative != null && length(v.end_date_relative) > 0 }
}
output "service_principal_certificates_key_id" {
  description = "Map of key_id values across all service_principal_certificates, keyed the same as var.service_principal_certificates"
  value       = { for k, v in azuread_service_principal_certificate.service_principal_certificates : k => v.key_id if v.key_id != null && length(v.key_id) > 0 }
}
output "service_principal_certificates_service_principal_id" {
  description = "Map of service_principal_id values across all service_principal_certificates, keyed the same as var.service_principal_certificates"
  value       = { for k, v in azuread_service_principal_certificate.service_principal_certificates : k => v.service_principal_id if v.service_principal_id != null && length(v.service_principal_id) > 0 }
}
output "service_principal_certificates_start_date" {
  description = "Map of start_date values across all service_principal_certificates, keyed the same as var.service_principal_certificates"
  value       = { for k, v in azuread_service_principal_certificate.service_principal_certificates : k => v.start_date if v.start_date != null && length(v.start_date) > 0 }
}
output "service_principal_certificates_type" {
  description = "Map of type values across all service_principal_certificates, keyed the same as var.service_principal_certificates"
  value       = { for k, v in azuread_service_principal_certificate.service_principal_certificates : k => v.type if v.type != null && length(v.type) > 0 }
}
output "service_principal_certificates_value" {
  description = "Map of value values across all service_principal_certificates, keyed the same as var.service_principal_certificates"
  value       = { for k, v in azuread_service_principal_certificate.service_principal_certificates : k => v.value if v.value != null && length(v.value) > 0 }
  sensitive   = true
}

