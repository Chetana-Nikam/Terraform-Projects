#dev
module "dev-app" {
  source = "./my-app-infra-module"
  my-env = "dev"
  instance-type = "t2.micro"
  ami = "ami-0fa1ca9559f1892ec"
}

#stage
module "stg-app" {
  source = "./my-app-infra-module"
  my-env = "stg"
  instance-type = "t2.micro"
  ami = "ami-0fa1ca9559f1892ec"
}

#production
module "prd-app" {
  source = "./my-app-infra-module"
  my-env = "prd"
  instance-type = "t2.micro"
  ami = "ami-0fa1ca9559f1892ec"
}