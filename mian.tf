terraform {
  backend "remote" {
    organization = "cm-natsume"
    workspaces {
      name = "terraform-cloud-version-test"
    }
  }

  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 5.14.0"
    }
  }
}

provider "aws" {
  region = "ap-northeast-1"
}

resource "aws_sns_topic" "tmp_001" {}
resource "aws_sns_topic" "tmp_002" {}
resource "aws_sns_topic" "tmp_003" {}
resource "aws_sns_topic" "tmp_004" {}
resource "aws_sns_topic" "tmp_005" {}
resource "aws_sns_topic" "tmp_006" {}
resource "aws_sns_topic" "tmp_007" {}
