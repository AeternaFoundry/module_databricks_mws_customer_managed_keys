resource "databricks_mws_customer_managed_keys" "mws_customer_managed_keys" {
  for_each = var.mws_customer_managed_keys

  account_id              = each.value.account_id
  use_cases               = each.value.use_cases
  creation_time           = each.value.creation_time
  customer_managed_key_id = each.value.customer_managed_key_id

  dynamic "aws_key_info" {
    for_each = each.value.aws_key_info != null ? [each.value.aws_key_info] : []
    content {
      key_alias  = aws_key_info.value.key_alias
      key_arn    = aws_key_info.value.key_arn
      key_region = aws_key_info.value.key_region
    }
  }

  dynamic "gcp_key_info" {
    for_each = each.value.gcp_key_info != null ? [each.value.gcp_key_info] : []
    content {
      kms_key_id = gcp_key_info.value.kms_key_id
    }
  }
}

