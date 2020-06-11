provider aws {
  region = var.region
  assume_role {
    role_arn = var.aws_role_arn
    session_name = var.aws_session_name
  }
}
