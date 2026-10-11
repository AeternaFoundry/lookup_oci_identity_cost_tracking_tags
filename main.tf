data "oci_identity_cost_tracking_tags" "identity_cost_tracking_tags_lookup" {
  for_each = var.identity_cost_tracking_tags_lookup

  compartment_id = each.value.compartment_id

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

