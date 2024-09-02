terraform {
  backend "s3" {
    bucket         = "abhinav-terraform-state-bucket" 
    key            = "terraform/state.tfstate"
    region         = "us-east-2" 
    encrypt        = true
    dynamodb_table = "abhinav-terraform-locks" 
  }
}
