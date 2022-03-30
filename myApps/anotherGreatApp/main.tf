terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region = "eu-west-1"
}

resource "aws_s3_bucket_object" "object" {
  bucket  = "${var.BUCKET_NAME}"
  key     = "${var.SANDBOX_ID}.json"
  content = "{ \"Content\": \"${var.CONTENT}\", \"FROM_PUBLISHER_1\": \"${var.FROM_PUBLISHER_1}\", \"FROM_PUBLISHER_2\": \"${var.FROM_PUBLISHER_2}\" }"
}
