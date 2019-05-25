terraform {
  backend "local" {
    path = "../../../../../../../tfstate/terraform-examples/cloud/aws/examples/nonprod/networking/security-group/tfstate.tfstate"
  }
}