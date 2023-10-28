# Create an IAM user
resource "aws_iam_user" "new_user" {
  name = var.user_name  # Replace with the desired username for the IAM user
}
# Attach new user with newly created group.
#resource "aws_iam_group_membership" "team" {
#  group = var.group_name
#  name  = "${var.group_name}-group"
#  users = [aws_iam_user.new_user.name]
#}
#
# Attach new user to existing group.
resource "aws_iam_user_login_profile" "console_access" {
  user = aws_iam_user.new_user.name
}
resource "aws_iam_user_group_membership" "attach_user_group" {
  depends_on = [aws_iam_user.new_user]
  groups = [var.group_name]
  user   = var.user_name
}
