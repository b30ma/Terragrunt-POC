# Inside each environment directory (environments/dev, environments/prod)

remote_state {
  backend = "s3"
  config = {
    bucket         = "your-terraform-state-bucket"
    key            = "${path_relative_to_include()}/terraform.tfstate"
    region         = "us-west-1"
    encrypt        = true
    dynamodb_table = "your-lock-table"
  }
}

# At the root of your project (project-root)

remote_state {
  backend = "s3"
  config = {
    bucket         = "your-terraform-state-bucket"
    key            = "project-root/terraform.tfstate"
    region         = "us-west-1"
    encrypt        = true
    dynamodb_table = "your-lock-table"
  }
}
