//Azure
module "azure-kubernetes-cluster-basic" {
  source = "azure/kubernetes/basic"
  kubernetes_client_id = ""
  kubernetes_client_secret = ""
  location = ""
  prefix = "basic"
}

module "azure-kubernetes-cluster-advanced-networking" {
  source = "azure/kubernetes/advanced-networking"
  kubernetes_client_id = ""
  kubernetes_client_secret = ""
  location = ""
  prefix = "advanced-networking"
}

module "azure-kubernetes-cluster-role-based-access-control" {
  source = "azure/kubernetes/role-based-access-control"
  kubernetes_client_id = ""
  kubernetes_client_secret = ""
  location = ""
  prefix = "role-based-access-control"
}

module "azure-sql_qa" {
  source = "azure/sql-azure/database"
  location = "us-west-1"
  prefix = "qa"
}

module "azure-sql_stg" {
  source = "azure/sql-azure/database"
  location = "us-west-1"
  prefix = "stg"
}

module "azure-redis-cache" {
  source = "azure/redis-cache/standard"
  location = "us-west-1"
  prefix = "stg"
}

module "azure-app-service" {
  source = "azure/app-service/docker-basic"
  location = ""
  prefix = "docker-basic"
}

module "azure-app-service-backup" {
  source = "azure/app-service/backup"
  location = ""
  prefix = "backup"
}

module "azure-app-service-linux-basic" {
  source = "azure/app-service/linux-basic"
  location = ""
  prefix = "linux-basic"
}

module "azure-app-service-windows-basic" {
  source = "azure/app-service/windows-basic"
  location = ""
  prefix = "windows-basic"
}

module "azure-app-service-windows-authentication" {
  source = "azure/app-service/windows-authentication"
  location = ""
  prefix = "windows-authentication"
}

//AWS
module "aws-rds" {
  source = "aws/aws-provider/rds"
  password = "123456"
  vpc_id = "vpc-123456"
}

module "aws-lambda" {
  source = "aws/aws-provider/lambda"
}

module "aws-elastic-search-vpv" {
  source = "aws/dome9-modules/elasticsearch/in-vpc"
  domain_name = "vpc"
  access_policy = ""
  elasticsearch_version = ""
  env = ""
  instance_count = ""
  instance_type = ""
  volume_size = ""
}

module "aws-elastic-search-no-vpv" {
  source = "aws/dome9-modules/elasticsearch/out-of-vpc"
  domain_name = "out-of-vpc"
  access_policy = ""
  elasticsearch_version = ""
  env = ""
  instance_count = ""
  instance_type = ""
  volume_size = ""
}

module "aws-kms" {
  source = "aws/dome9-modules/iam/kms_key"
  description = ""
  policy = ""
}

module "aws-iam-password-policy-a" {
  source = "aws/dome9-modules/iam/password_policy"
  minimum_password_length = 16
}

module "aws-s3" {
  source = "aws/aws-provider/s3-cross-account-access"
  bucket_name = "s3-cross-account-access"
  prod_access_key = ""
  prod_secret_key = ""
  test_access_key = ""
  test_account_id = ""
  test_secret_key = ""
}

module "aws-eks-cluster" {
  source = "aws/aws-provider/eks-getting-started"
}