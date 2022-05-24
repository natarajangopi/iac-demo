#create a resource for ec2 instance
resource "aws_instance" "Tf7" {
 ami = "ami-09d56f8956ab235b3"
 instance_type = "t2.micro"
 count = "1"
 key_name = "TestJenkins"
 security_groups = ["TF-SG"]
 tags = {
    Name = "TF7"
 }
}

resource "aws_security_group" "TF-SG12" {
 name = "TF-SG12"
 description = "Security group for TF"
 
 ingress{
  from_port = 8080
  to_port = 8080
  protocol = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
 }

 ingress{
  from_port = 22
  to_port = 22
  protocol = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
 }

 #outbound from jenkins server
 egress{
  from_port = 0
  to_port = 65535
  protocol = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
 }

 tags={
  Name = "TF-SG12"
 }
}
