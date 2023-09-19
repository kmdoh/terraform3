provider "aws" {
  region = "us-east-1" # Replace with your desired AWS region
}

resource "aws_iam_group" "example_group" {
  name = "talakaka"
}

resource "aws_iam_user_group_membership" "example_membership" {
  user       = aws_iam_user.example_user3.name
  groups     = [aws_iam_group.example_group3.name]
}

resource "aws_iam_user" "example_user3" {
  name = "kaka"
}

