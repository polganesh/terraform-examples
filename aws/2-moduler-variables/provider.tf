provider "aws" {
	access_key = "${var.awsAccessKey}"
  	secret_key = "${var.awsAccessValue}"
	region     = "${var.awsRegion}"
}