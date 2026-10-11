resource "newrelic_alert_policy_channel" "alert_policy_channels" {
  for_each = var.alert_policy_channels

  channel_ids = each.value.channel_ids
  policy_id   = each.value.policy_id
  account_id  = each.value.account_id

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
    }
  }
}

