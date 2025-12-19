# ------------------------------
# Data: IAM Assume Role Policy
# ------------------------------
data "aws_iam_policy_document" "assume_role" {
  statement {
    actions = ["sts:AssumeRole"]

    principals {
      type        = "Service"
      identifiers = ["ec2.amazonaws.com"]
    }
  }
}

# ------------------------------
# Data: Managed Policies
# ------------------------------

# ------------------------------
# IAM Roles
# ------------------------------
resource "aws_iam_role" "app" {
  name               = "app-role"
  assume_role_policy = data.aws_iam_policy_document.assume_role.json
}

resource "aws_iam_role" "web_hosting" {
  name               = "web-hosting-role"
  assume_role_policy = data.aws_iam_policy_document.assume_role.json
}

# ------------------------------
# Attach Managed Policies
# ------------------------------
# Attach Managed Policies directly using ARNs

resource "aws_iam_role_policy_attachment" "app_ssm" {
  role       = aws_iam_role.app.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
}

resource "aws_iam_role_policy_attachment" "app_database" {
  role       = aws_iam_role.app.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonRDSFullAccess"
}

resource "aws_iam_role_policy_attachment" "web_ssm" {
  role       = aws_iam_role.web_hosting.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
}

resource "aws_iam_role_policy_attachment" "web_s3" {
  role       = aws_iam_role.web_hosting.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess"
}
