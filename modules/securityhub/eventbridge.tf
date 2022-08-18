resource "aws_cloudwatch_event_rule" "securityhub" {
  name_prefix = "SecurityHubFindings"
  description = "Captures SecurityHub New Findings"

  event_pattern = <<EOF
{
  "detail-type": [
    "Security Hub Findings - Imported"
  ],
  "source": [
    "aws.securityhub"
  ],
  "detail": {
    "findings": {
      "Severity": {
        "Label": ${jsonencode(var.severity_list)}
      },
      "Workflow": {
        "Status": [
          "NEW"
        ]
      }
    }
  }
}
EOF
}

