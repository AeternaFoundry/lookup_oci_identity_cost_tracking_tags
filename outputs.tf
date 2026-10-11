output "identity_cost_tracking_tags_lookup_id" {
  description = "Map of id values across all identity_cost_tracking_tags_lookup, keyed the same as var.identity_cost_tracking_tags_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_identity_cost_tracking_tags.identity_cost_tracking_tags_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "identity_cost_tracking_tags_lookup_compartment_id" {
  description = "Map of compartment_id values across all identity_cost_tracking_tags_lookup, keyed the same as var.identity_cost_tracking_tags_lookup except keys with no compartment_id are omitted"
  value       = { for k, v in data.oci_identity_cost_tracking_tags.identity_cost_tracking_tags_lookup : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "identity_cost_tracking_tags_lookup_filter" {
  description = "Map of filter values across all identity_cost_tracking_tags_lookup, keyed the same as var.identity_cost_tracking_tags_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_identity_cost_tracking_tags.identity_cost_tracking_tags_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "identity_cost_tracking_tags_lookup_tags" {
  description = "Map of tags values across all identity_cost_tracking_tags_lookup, keyed the same as var.identity_cost_tracking_tags_lookup except keys with no tags are omitted"
  value       = { for k, v in data.oci_identity_cost_tracking_tags.identity_cost_tracking_tags_lookup : k => v.tags if v.tags != null && length(v.tags) > 0 }
}

