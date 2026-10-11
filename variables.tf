variable "network_services_agent_connectivity_templates" {
  description = <<EOT
Map of network_services_agent_connectivity_templates, attributes below
Required:
    - access_path
    - agent_connectivity_template_id
    - location
Optional:
    - access_types
    - deletion_policy
    - description
    - labels
    - project
    - egress_network_config (block):
        - dns_peering_config (optional, block):
            - domain (optional)
            - domains (optional)
            - target_network (required)
        - network_attachment (optional)
        - tls_config (optional, block):
            - additional_roots (required)
            - trust_config (optional)
        - vpc_egress (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    access_path                    = string
    agent_connectivity_template_id = string
    location                       = string
    access_types                   = optional(list(string))
    deletion_policy                = optional(string)
    description                    = optional(string)
    labels                         = optional(map(string))
    project                        = optional(string)
    egress_network_config = optional(object({
      dns_peering_config = optional(object({
        domain         = optional(string)
        domains        = optional(list(string))
        target_network = string
      }))
      network_attachment = optional(string)
      tls_config = optional(object({
        additional_roots = string
        trust_config     = optional(string)
      }))
      vpc_egress = optional(string)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

