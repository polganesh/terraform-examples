
variable "awsAccessKey" {}
variable "awsAccessValue" {}
variable "awsRegion"{
					#AWS mumbai region
					default="ap-south-1" 
				}

variable "awsRegionAMIMap"{
	type="map"
	default={
		ap-south-1="ami-b46f48db"
	}
}

variable "createTimout" {}
variable "deleteTimeout" {}

variable "instanceUserName" {}
variable "instancePassword" {}


