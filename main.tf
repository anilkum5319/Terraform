provider "aws" {

         region = "us-east-1"

}


# Instance Creation

variable "server_name" {

}

resource "aws_instance" "myserver" {
  ami           = "ami-0323c3dd2da7fb37d"
  instance_type = "t2.micro"
  key_name = "anil_ibm"
  tags = {
    Name = "${var.server_name}"
  }
}

## Output Value

output "My_Server_Name:" {
	value = "${aws_instance.myserver.tags.Name}, ${aws_instance.myserver.private_ip}, ${aws_instance.myserver.public_ip}"

}

