terraform {
  backend "remote" {
    organization = "cm-natsume"
    workspaces {
      name = "terraform-cloud-version-test"
    }
  }
}

provider "aws" {
  region = "ap-northeast-1"
}

resource "aws_sns_topic" "tmp_001" {}
resource "aws_sns_topic" "tmp_002" {}
