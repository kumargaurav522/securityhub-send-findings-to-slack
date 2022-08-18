module "securityhub_alarms" {
  source = "./modules/securityhub"

  severity_list             = ["HIGH", "CRITICAL"]
  alarm_slack_endpoint      = "https://hooks.slack.com/services/34543456/43545656767/sfsadfd"
  subscription_pci          = var.subscription_pci
  subscription_cis          = var.subscription_cis
  subscription_foundational = var.subscription_foundational


}
