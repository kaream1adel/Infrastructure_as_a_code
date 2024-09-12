terraform {
  backend "s3" {
     bucket         = "tf-state-file-kaream"
    key            = "arn:aws:s3:::tf-state-file-kaream"
    region         = "us-east-1"
    dynamodb_table = "tf-dynamodb"
    
  }
}



module "network" {
    source="C:\\Kaream\\ASU\\Learning\\Terraform\\labs\\Networking"
 # any inputs will be passed to the module 

    vpc-name = var.vpc-destination
    region-name = var.vpc-region-name
}