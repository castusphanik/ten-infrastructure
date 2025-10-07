terraform {
  required_version = ">= 1.5.0"

  #   backend "s3" {
  #     bucket         = "my-terraform-state-bucket"   # Replace with your bucket name
  #     key            = "envs/dev/terraform.tfstate"  # Path within the bucket
  #     region         = "ap-south-1"                  # S3 bucket region
  #     dynamodb_table = "terraform-lock-table"        # Optional: for state locking
  #     encrypt        = true                           # Encrypt state at rest
  #   }
}

provider "aws" {
  region = "ap-south-1"
}
