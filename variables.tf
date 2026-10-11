variable "database_vm_cluster_patches_lookup" {
  description = <<EOT
Map of database_vm_cluster_patches_lookup, attributes below
Required:
    - vm_cluster_id
Optional:
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    vm_cluster_id = string
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

