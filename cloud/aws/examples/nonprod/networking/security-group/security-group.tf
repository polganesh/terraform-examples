module "security-group"{
	source="git::https://github.com/polganesh/terraform-modules.git//cloud/aws/networking/security-group"
	region="eu-central-1"
	region_id="euc1"
	cost_centre="infra"
	build_date="25052019"
	version_id="001"
	vpc_seq_id="001"
	app_service="poc"
	sg_for="tst"
	seq_id="001"
	sg_description="security group"
    app_role="network"
	aws_resource_assoc="ecs"
	auto_update="true"
	part_of_cluster="n"
	maintenance_day="sun"
	maintenance_time="0030"
	confidentiality="highly confidential"
	compliance="none"
	aws_resource_assoc="elb"
	environment="dev"
	inbound_cidr_rules = 
		{	
			"0" = ["0.0.0.0/0", "80", "80", "TCP"] # Allow traffic from everywhere on port 80
			"1" = ["54.246.130.115/32", "443", "443", "TCP"] # Allow traffice from IP 54.246.130.115 on port 443
		}
	
	
}