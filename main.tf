resource "google_network_services_agent_connectivity_template" "network_services_agent_connectivity_templates" {
  for_each = var.network_services_agent_connectivity_templates

  access_path                    = each.value.access_path
  agent_connectivity_template_id = each.value.agent_connectivity_template_id
  location                       = each.value.location
  access_types                   = each.value.access_types
  deletion_policy                = each.value.deletion_policy
  description                    = each.value.description
  labels                         = each.value.labels
  project                        = each.value.project

  dynamic "egress_network_config" {
    for_each = each.value.egress_network_config != null ? [each.value.egress_network_config] : []
    content {
      dynamic "dns_peering_config" {
        for_each = egress_network_config.value.dns_peering_config != null ? [egress_network_config.value.dns_peering_config] : []
        content {
          domain         = dns_peering_config.value.domain
          domains        = dns_peering_config.value.domains
          target_network = dns_peering_config.value.target_network
        }
      }
      network_attachment = egress_network_config.value.network_attachment
      dynamic "tls_config" {
        for_each = egress_network_config.value.tls_config != null ? [egress_network_config.value.tls_config] : []
        content {
          additional_roots = tls_config.value.additional_roots
          trust_config     = tls_config.value.trust_config
        }
      }
      vpc_egress = egress_network_config.value.vpc_egress
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

