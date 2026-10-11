variable "alert_policy_channels" {
  description = <<EOT
Map of alert_policy_channels, attributes below
Required:
    - channel_ids
    - policy_id
Optional:
    - account_id
    - timeouts (block):
        - create (optional)
EOT

  type = map(object({
    channel_ids = set(number)
    policy_id   = number
    account_id  = optional(number)
    timeouts = optional(object({
      create = optional(string)
    }))
  }))
}

