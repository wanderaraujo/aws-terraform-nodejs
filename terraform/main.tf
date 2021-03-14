terraform {
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
