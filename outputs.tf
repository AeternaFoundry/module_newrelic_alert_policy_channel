output "alert_policy_channels_id" {
  description = "Map of id values across all alert_policy_channels, keyed the same as var.alert_policy_channels"
  value       = { for k, v in newrelic_alert_policy_channel.alert_policy_channels : k => v.id }
}
output "alert_policy_channels_account_id" {
  description = "Map of account_id values across all alert_policy_channels, keyed the same as var.alert_policy_channels"
  value       = { for k, v in newrelic_alert_policy_channel.alert_policy_channels : k => v.account_id }
}
output "alert_policy_channels_channel_ids" {
  description = "Map of channel_ids values across all alert_policy_channels, keyed the same as var.alert_policy_channels"
  value       = { for k, v in newrelic_alert_policy_channel.alert_policy_channels : k => v.channel_ids }
}
output "alert_policy_channels_policy_id" {
  description = "Map of policy_id values across all alert_policy_channels, keyed the same as var.alert_policy_channels"
  value       = { for k, v in newrelic_alert_policy_channel.alert_policy_channels : k => v.policy_id }
}

