module "network" {
    source="C:\\Kaream\\ASU\\Learning\\Terraform\\labs\\Networking"
 # any inputs will be passed to the module 

    vpc-name = var.vpc-destination
    region-name = var.vpc-region-name
}