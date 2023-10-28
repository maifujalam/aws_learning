# Create an IAM user
resource "aws_iam_user" "example_user" {
  name = var.user_name  # Replace with the desired username for the IAM user
}

# Create an IAM policy from the JSON
resource "aws_iam_policy" "example_policy" {
  name        = "example-policy"  # Replace with a name for the policy
  description = "Example IAM policy"
#  policy      = data.aws_iam_policy_document.example_policy.json
  policy = file("/home/alam/Desktop/projects/aws_learning/IAM/policies/s3_all.json")
}

# Attach the policy to the user
resource "aws_iam_user_policy_attachment" "example_user_policy" {
  policy_arn = aws_iam_policy.example_policy.arn
  user       = aws_iam_user.example_user.name
}

resource "consol" "" {}
