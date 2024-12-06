# cloudwatch.tf
resource "aws_cloudwatch_log_group" "web_log_group" {
  name = "web-log-group"
}

resource "aws_cloudwatch_log_stream" "web_log_stream" {
  log_group_name = aws_cloudwatch_log_group.web_log_group.name
  name           = "web-log-stream"
}
