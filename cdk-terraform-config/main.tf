terraform { 
  cloud { 
    
    organization = "celyne-project-19" 

    workspaces { 
      name = "s3-webapp-workspace" 
    } 
  } 


provider "aws" {
  region = "eu-central-1"
}


module "s3-webapp" {
  source  = "app.terraform.io/celyne-project-19/s3-webapp/aws"
  version = "1.0.0"
  name    = "webapp-bucket"
  region  = "eu-central-1"
  prefix  = "cdk"
}