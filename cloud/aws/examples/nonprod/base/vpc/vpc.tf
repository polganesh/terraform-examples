module "vpc"{
	source="git::https://github.com/polganesh/terraform-modules.git//cloud/aws/networking/vpc"
	vpc_cidr_block="10.240.0.0/16"
	public_subnet_cidr_list=["10.240.1.0/24","10.240.2.0/24","10.240.3.0/24"]
	private_app_subnet_list=["10.240.4.0/24","10.240.5.0/24","10.240.6.0/24"]
	private_db_subnet_list=["10.240.7.0/24","10.240.8.0/24","10.240.9.0/24"]
	region="eu-central-1"
	region_id="euc1"
	az_list=["eu-central-1a","eu-central-1b","eu-central-1c"]
	app_role="network"
	vpc_seq_id="001"
	seq_id="001"
	environment="n"
	cost_centre="infra"
	build_date="11052018"
	version_id="001"
}