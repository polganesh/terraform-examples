terraform {
  backend "local" {
    path = "../../../../../../../tfstate/terraform-examples/cloud/aws/examples/nonprod/base/vpc/tfstate.tfstate"
  }
}