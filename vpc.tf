module vpc {
  source = "github.com/IneyQQ/Terraform-aws-vpc.git?ref=master"

  vpc_cidr                    = "10.0.0.0/16"
  az_list                     = ["us-east-1a", "us-east-1b"]
  vpc_public_subnet_cidrs     = ["10.0.1.0/24", "10.0.2.0/24"]
  vpc_private_subnet_cidrs    = ["10.0.3.0/24", "10.0.4.0/24"]
  vpc_nointernet_subnet_cidrs = ["10.0.5.0/24", "10.0.6.0/24"]
  
  Name_tag_prefix = "ineyqq-aws-vpc-test"
  tags = {
    "coherent:owner"   = "MichaelShavlyuk@coherentsolutions.com"
    "coherent:project" = "TC - DevOps"
    "coherent:client"  = "Coherent"
  }
}
