variable "storage_queues" {
  description = <<EOT
Map of storage_queues, attributes below
Required:
    - name
    - storage_account_id
Optional:
    - metadata
EOT

  type = map(object({
    name               = string
    storage_account_id = string
    metadata           = optional(map(string))
  }))
  # Note: 5 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

