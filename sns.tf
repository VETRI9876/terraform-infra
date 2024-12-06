# sns.tf
resource "aws_sns_topic" "deployment_topic" {
  name = "deployment-notifications"
}

resource "aws_sns_topic_subscription" "email_subscription" {
  topic_arn = aws_sns_topic.deployment_topic.arn
  protocol  = "email"
  endpoint  = "vvel54881@gmail.com"  # Replace with your email
}
