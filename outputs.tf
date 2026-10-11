output "mws_customer_managed_keys_id" {
  description = "Map of id values across all mws_customer_managed_keys, keyed the same as var.mws_customer_managed_keys except keys with no id are omitted"
  value       = { for k, v in databricks_mws_customer_managed_keys.mws_customer_managed_keys : k => v.id if v.id != null && length(v.id) > 0 }
}
output "mws_customer_managed_keys_account_id" {
  description = "Map of account_id values across all mws_customer_managed_keys, keyed the same as var.mws_customer_managed_keys except keys with no account_id are omitted"
  value       = { for k, v in databricks_mws_customer_managed_keys.mws_customer_managed_keys : k => v.account_id if v.account_id != null && length(v.account_id) > 0 }
}
output "mws_customer_managed_keys_aws_key_info" {
  description = "Map of aws_key_info values across all mws_customer_managed_keys, keyed the same as var.mws_customer_managed_keys except keys with no aws_key_info are omitted"
  value       = { for k, v in databricks_mws_customer_managed_keys.mws_customer_managed_keys : k => one(v.aws_key_info) if v.aws_key_info != null && length(v.aws_key_info) > 0 }
}
output "mws_customer_managed_keys_creation_time" {
  description = "Map of creation_time values across all mws_customer_managed_keys, keyed the same as var.mws_customer_managed_keys except keys with no creation_time are omitted"
  value       = { for k, v in databricks_mws_customer_managed_keys.mws_customer_managed_keys : k => v.creation_time if v.creation_time != null }
}
output "mws_customer_managed_keys_customer_managed_key_id" {
  description = "Map of customer_managed_key_id values across all mws_customer_managed_keys, keyed the same as var.mws_customer_managed_keys except keys with no customer_managed_key_id are omitted"
  value       = { for k, v in databricks_mws_customer_managed_keys.mws_customer_managed_keys : k => v.customer_managed_key_id if v.customer_managed_key_id != null && length(v.customer_managed_key_id) > 0 }
}
output "mws_customer_managed_keys_gcp_key_info" {
  description = "Map of gcp_key_info values across all mws_customer_managed_keys, keyed the same as var.mws_customer_managed_keys except keys with no gcp_key_info are omitted"
  value       = { for k, v in databricks_mws_customer_managed_keys.mws_customer_managed_keys : k => one(v.gcp_key_info) if v.gcp_key_info != null && length(v.gcp_key_info) > 0 }
}
output "mws_customer_managed_keys_use_cases" {
  description = "Map of use_cases values across all mws_customer_managed_keys, keyed the same as var.mws_customer_managed_keys except keys with no use_cases are omitted"
  value       = { for k, v in databricks_mws_customer_managed_keys.mws_customer_managed_keys : k => v.use_cases if v.use_cases != null && length(v.use_cases) > 0 }
}

