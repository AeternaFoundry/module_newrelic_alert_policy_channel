output "alert_policy_channels_id" {
  description = "Map of id values across all alert_policy_channels, keyed the same as var.alert_policy_channels except keys with no id are omitted"
  value       = { for k, v in newrelic_alert_policy_channel.alert_policy_channels : k => v.id if v.id != null && length(v.id) > 0 }
}
output "alert_policy_channels_account_id" {
  description = "Map of account_id values across all alert_policy_channels, keyed the same as var.alert_policy_channels except keys with no account_id are omitted"
  value       = { for k, v in newrelic_alert_policy_channel.alert_policy_channels : k => v.account_id if v.account_id != null }
}
output "alert_policy_channels_channel_ids" {
  description = "Map of channel_ids values across all alert_policy_channels, keyed the same as var.alert_policy_channels except keys with no channel_ids are omitted"
  value       = { for k, v in newrelic_alert_policy_channel.alert_policy_channels : k => v.channel_ids if v.channel_ids != null && length(v.channel_ids) > 0 }
}
output "alert_policy_channels_policy_id" {
  description = "Map of policy_id values across all alert_policy_channels, keyed the same as var.alert_policy_channels except keys with no policy_id are omitted"
  value       = { for k, v in newrelic_alert_policy_channel.alert_policy_channels : k => v.policy_id if v.policy_id != null }
}

