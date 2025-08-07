terraform {
  backend "s3" {
    bucket = "worldbankpatna"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}
