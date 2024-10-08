provider "aws" {
  region  = "us-east-2"
  # profile = "devops-training"
}

module "ec2" {
  source         = "./modules/ec2/"
  ami_id          = "ami-085f9c64a9b75eed5"
  instance_type   = var.instance_type
  region          = var.region
  instance_name   = var.instance_name
}

module "s3" {
  source         = "./modules/s3/"
  bucket_name     = var.bucket
}
