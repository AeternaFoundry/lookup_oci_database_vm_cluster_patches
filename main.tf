data "oci_database_vm_cluster_patches" "database_vm_cluster_patches_lookup" {
  for_each = var.database_vm_cluster_patches_lookup

  vm_cluster_id = each.value.vm_cluster_id

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

