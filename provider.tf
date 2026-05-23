provider "aws" {
  shared_config_files      = ["/home/mahmoud/.aws/config"]
  shared_credentials_files = ["/home/mahmoud/.aws/credentials"]
  profile                  = "terraform_dev"
}
