resource "aws_iam_user" "user" {
  name = var.username
}

resource "aws_iam_user_policy" "policy" {
  name = "full-access"
  user = aws_iam_user.user.name

  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [{
      Action   = "*",
      Effect   = "Allow",
      Resource = "*"
    }]
  })
}
