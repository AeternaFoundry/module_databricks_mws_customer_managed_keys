variable "mws_customer_managed_keys" {
  description = <<EOT
Map of mws_customer_managed_keys, attributes below
Required:
    - account_id
    - use_cases
Optional:
    - creation_time
    - customer_managed_key_id
    - aws_key_info (block):
        - key_alias (optional)
        - key_arn (required)
        - key_region (optional)
    - gcp_key_info (block):
        - kms_key_id (required)
EOT

  type = map(object({
    account_id              = string
    use_cases               = list(string)
    creation_time           = optional(number)
    customer_managed_key_id = optional(string)
    aws_key_info = optional(object({
      key_alias  = optional(string)
      key_arn    = string
      key_region = optional(string)
    }))
    gcp_key_info = optional(object({
      kms_key_id = string
    }))
  }))
}

