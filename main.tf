resource "aws_iam_user" "admin" {
    name = "Chuks"

    tags = {
      "Description" = "Technical Team Lead"
    }
  
}

resource "aws_iam_policy" "adminUser" {
    name = "AdminUsers"
    policy =  file("admin-policy.json")
}

resource "aws_iam_user_policy_attachment" "Chuks-admin-access" {
  user = aws_iam_user.admin.name
  policy_arn = aws_iam_policy.adminUser.arn
}