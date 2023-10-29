#output "user_login" {
#  value = aws_iam_user.new_user.name
#}
#output "user_password" {
#  value = aws_iam_user_login_profile.console_access.password
#}
#output "console_login_url" {
#  value = "https://${data.aws_caller_identity.current.account_id}.signin.aws.amazon.com/console"
#}
