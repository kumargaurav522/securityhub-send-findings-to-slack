resource "aws_cloudformation_stack" "to_slack" {
  name          = "SecurityHubToSlackIntegration"
  template_body = file("${path.module}/event-to-slack.cf.json")
  parameters = {
    IncomingWebHookURL  = var.alarm_slack_endpoint
    SecurityHubEventArn = aws_cloudwatch_event_rule.securityhub.arn
  }
  capabilities = ["CAPABILITY_IAM"]
}

resource "aws_cloudwatch_event_target" "to_slack" {
  rule      = aws_cloudwatch_event_rule.securityhub.name
  target_id = "securityhub-to-slack"
  arn       = aws_cloudformation_stack.to_slack.outputs.LambdaFindingsToSlackArn
}