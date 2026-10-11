output "network_services_agent_connectivity_templates_id" {
  description = "Map of id values across all network_services_agent_connectivity_templates, keyed the same as var.network_services_agent_connectivity_templates except keys with no id are omitted"
  value       = { for k, v in google_network_services_agent_connectivity_template.network_services_agent_connectivity_templates : k => v.id if v.id != null && length(v.id) > 0 }
}
output "network_services_agent_connectivity_templates_access_path" {
  description = "Map of access_path values across all network_services_agent_connectivity_templates, keyed the same as var.network_services_agent_connectivity_templates except keys with no access_path are omitted"
  value       = { for k, v in google_network_services_agent_connectivity_template.network_services_agent_connectivity_templates : k => v.access_path if v.access_path != null && length(v.access_path) > 0 }
}
output "network_services_agent_connectivity_templates_access_types" {
  description = "Map of access_types values across all network_services_agent_connectivity_templates, keyed the same as var.network_services_agent_connectivity_templates except keys with no access_types are omitted"
  value       = { for k, v in google_network_services_agent_connectivity_template.network_services_agent_connectivity_templates : k => v.access_types if v.access_types != null && length(v.access_types) > 0 }
}
output "network_services_agent_connectivity_templates_agent_connectivity_template_id" {
  description = "Map of agent_connectivity_template_id values across all network_services_agent_connectivity_templates, keyed the same as var.network_services_agent_connectivity_templates except keys with no agent_connectivity_template_id are omitted"
  value       = { for k, v in google_network_services_agent_connectivity_template.network_services_agent_connectivity_templates : k => v.agent_connectivity_template_id if v.agent_connectivity_template_id != null && length(v.agent_connectivity_template_id) > 0 }
}
output "network_services_agent_connectivity_templates_create_time" {
  description = "Map of create_time values across all network_services_agent_connectivity_templates, keyed the same as var.network_services_agent_connectivity_templates except keys with no create_time are omitted"
  value       = { for k, v in google_network_services_agent_connectivity_template.network_services_agent_connectivity_templates : k => v.create_time if v.create_time != null && length(v.create_time) > 0 }
}
output "network_services_agent_connectivity_templates_deletion_policy" {
  description = "Map of deletion_policy values across all network_services_agent_connectivity_templates, keyed the same as var.network_services_agent_connectivity_templates except keys with no deletion_policy are omitted"
  value       = { for k, v in google_network_services_agent_connectivity_template.network_services_agent_connectivity_templates : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "network_services_agent_connectivity_templates_description" {
  description = "Map of description values across all network_services_agent_connectivity_templates, keyed the same as var.network_services_agent_connectivity_templates except keys with no description are omitted"
  value       = { for k, v in google_network_services_agent_connectivity_template.network_services_agent_connectivity_templates : k => v.description if v.description != null && length(v.description) > 0 }
}
output "network_services_agent_connectivity_templates_effective_labels" {
  description = "Map of effective_labels values across all network_services_agent_connectivity_templates, keyed the same as var.network_services_agent_connectivity_templates except keys with no effective_labels are omitted"
  value       = { for k, v in google_network_services_agent_connectivity_template.network_services_agent_connectivity_templates : k => v.effective_labels if v.effective_labels != null && length(v.effective_labels) > 0 }
}
output "network_services_agent_connectivity_templates_egress_network_config" {
  description = "Map of egress_network_config values across all network_services_agent_connectivity_templates, keyed the same as var.network_services_agent_connectivity_templates except keys with no egress_network_config are omitted"
  value       = { for k, v in google_network_services_agent_connectivity_template.network_services_agent_connectivity_templates : k => one(v.egress_network_config) if v.egress_network_config != null && length(v.egress_network_config) > 0 }
}
output "network_services_agent_connectivity_templates_etag" {
  description = "Map of etag values across all network_services_agent_connectivity_templates, keyed the same as var.network_services_agent_connectivity_templates except keys with no etag are omitted"
  value       = { for k, v in google_network_services_agent_connectivity_template.network_services_agent_connectivity_templates : k => v.etag if v.etag != null && length(v.etag) > 0 }
}
output "network_services_agent_connectivity_templates_labels" {
  description = "Map of labels values across all network_services_agent_connectivity_templates, keyed the same as var.network_services_agent_connectivity_templates except keys with no labels are omitted"
  value       = { for k, v in google_network_services_agent_connectivity_template.network_services_agent_connectivity_templates : k => v.labels if v.labels != null && length(v.labels) > 0 }
}
output "network_services_agent_connectivity_templates_location" {
  description = "Map of location values across all network_services_agent_connectivity_templates, keyed the same as var.network_services_agent_connectivity_templates except keys with no location are omitted"
  value       = { for k, v in google_network_services_agent_connectivity_template.network_services_agent_connectivity_templates : k => v.location if v.location != null && length(v.location) > 0 }
}
output "network_services_agent_connectivity_templates_name" {
  description = "Map of name values across all network_services_agent_connectivity_templates, keyed the same as var.network_services_agent_connectivity_templates except keys with no name are omitted"
  value       = { for k, v in google_network_services_agent_connectivity_template.network_services_agent_connectivity_templates : k => v.name if v.name != null && length(v.name) > 0 }
}
output "network_services_agent_connectivity_templates_project" {
  description = "Map of project values across all network_services_agent_connectivity_templates, keyed the same as var.network_services_agent_connectivity_templates except keys with no project are omitted"
  value       = { for k, v in google_network_services_agent_connectivity_template.network_services_agent_connectivity_templates : k => v.project if v.project != null && length(v.project) > 0 }
}
output "network_services_agent_connectivity_templates_terraform_labels" {
  description = "Map of terraform_labels values across all network_services_agent_connectivity_templates, keyed the same as var.network_services_agent_connectivity_templates except keys with no terraform_labels are omitted"
  value       = { for k, v in google_network_services_agent_connectivity_template.network_services_agent_connectivity_templates : k => v.terraform_labels if v.terraform_labels != null && length(v.terraform_labels) > 0 }
}
output "network_services_agent_connectivity_templates_update_time" {
  description = "Map of update_time values across all network_services_agent_connectivity_templates, keyed the same as var.network_services_agent_connectivity_templates except keys with no update_time are omitted"
  value       = { for k, v in google_network_services_agent_connectivity_template.network_services_agent_connectivity_templates : k => v.update_time if v.update_time != null && length(v.update_time) > 0 }
}

