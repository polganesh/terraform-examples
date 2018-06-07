#create first aws ec2 instance
resource "aws_instance" "my-first-ec2" {
	ami           = "ami-b46f48db"
	instance_type = "t2.micro"
  key_name = "myec2keypair"
    	  	
	tags{
  		Name="my-first-ec2-instance"
  		Project="demo-29-Apr-2018"
  }

  connection {
    user = "ec2-user"
    /*
    1]this must be absolute path.relative path will not work.
    2]it must be with file 
    3]it is location of pem file. location of ppk file will throw error
    */
    private_key = "${file("C:/Users/ganesh13723/.ssh/myec2keypair.pem")}"

      

        
    }

  provisioner "remote-exec" {
    inline = [
       "cd /home/ec2-user",
       "sudo mkdir mysoft",
       "sudo chown ec2-user mysoft"
    ]

    /*
   connection{
        user="ec2-user"
        private_key="./provision/config/security/private-key-myec2keypair.ppk"
        timeout = "10m"
      }
    */  
  }

  provisioner "file"{
    source="./provision/config/unix/abc1234.txt"
    destination="/home/ec2-user/mysoft/myconf.txt"
  }

  timeouts {
  	create = "${var.createTimout}"
  	delete = "${var.deleteTimeout}"
  }
}
