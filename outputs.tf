output "database_vm_cluster_patches_lookup_id" {
  description = "Map of id values across all database_vm_cluster_patches_lookup, keyed the same as var.database_vm_cluster_patches_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_database_vm_cluster_patches.database_vm_cluster_patches_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "database_vm_cluster_patches_lookup_filter" {
  description = "Map of filter values across all database_vm_cluster_patches_lookup, keyed the same as var.database_vm_cluster_patches_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_database_vm_cluster_patches.database_vm_cluster_patches_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "database_vm_cluster_patches_lookup_patches" {
  description = "Map of patches values across all database_vm_cluster_patches_lookup, keyed the same as var.database_vm_cluster_patches_lookup except keys with no patches are omitted"
  value       = { for k, v in data.oci_database_vm_cluster_patches.database_vm_cluster_patches_lookup : k => v.patches if v.patches != null && length(v.patches) > 0 }
}
output "database_vm_cluster_patches_lookup_vm_cluster_id" {
  description = "Map of vm_cluster_id values across all database_vm_cluster_patches_lookup, keyed the same as var.database_vm_cluster_patches_lookup except keys with no vm_cluster_id are omitted"
  value       = { for k, v in data.oci_database_vm_cluster_patches.database_vm_cluster_patches_lookup : k => v.vm_cluster_id if v.vm_cluster_id != null && length(v.vm_cluster_id) > 0 }
}

