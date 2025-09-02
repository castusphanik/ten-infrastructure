terraform {
  backend "s3" {
    bucket         = "ten-terraform-statefile"  # Your actual bucket name
    key            = "env/dev/terraform.tfstate"  # File path in the bucket
    region         = "ap-south-1"                  # Your AWS region
    encrypt        = true
    # dynamodb_table = "terraform-locks"            # Table created above
  }
}

provider "aws" {
  region = "ap-south-1" 
}