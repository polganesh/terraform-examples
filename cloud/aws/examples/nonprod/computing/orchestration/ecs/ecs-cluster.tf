module "ecscluster"{
	source="../../../modules/ecs/ecs-cluster"
	vpc_seq_id="001"
	seq_id="001"
	# we need to create custom image in our AWS account. as AWS used to change images frequetly.
	# just to avoid this we need to create custom image
	# please note this must be ECS optimized.
	image_id="ami-0d14e906130bb0f70"
	instance_type="m4.large"
	key_name="my-nonprod-keypair"
	instance_ebs_optimized=false #it will provide better performance. not available for small ec2 instances hence selected it as false
	launch_config_sec_group_id="sg-03a911b07b089447b" # enable traffic only from ALB in cluster

	root_volume_size=50
	max_size=4
	min_size=2
	desired_capacity=2 # it should be same as min_size
	region="eu-central-1" 
	region_id="euc1"
	environment="dev"
	cost_centre="thwrks"
	build_date="11052019"
	version_id="001"
	project="thworks"
	app_service="poc"
	access_key="${var.aws-access-key}"
	secret_key="${var.aws-secret-key}"
	maintenance_time="00:00"
	maintenance_day="Sun"
}
