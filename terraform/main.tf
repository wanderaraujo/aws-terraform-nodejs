# terraform {
#   required_version = "~> 0.12.5"

#   backend "remote" {
#     hostname     = "app.terraform.io"
#     organization = "pyxis"
#   }

#   workspace {
#     name = "default"
#   }

# }

terraform {
  # required_version = "~> 0.12.40"
  backend "remote" {
    organization = "pyxis"

    workspaces {
      name = "aws-course-terraform"
    }
  }
}

provider "aws" {
  region = var.region
}
