#create first aws ec2 instance
resource "aws_instance" "my-first-ec2" {
	ami           = "ami-b46f48db"
  instance_type = "t2.micro"
    	  	
  tags{
  	Name="my-first-ec2-instance"
  	Project="demo-29-Apr-2018"
  }

  timeouts {
  	create = "${var.createTimout}"
  	delete = "${var.deleteTimeout}"
  }
}
