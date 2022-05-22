resource "aws_instance" "Tf5" {
 ami = "ami-0022f774911c1d690"
 instance_type = "t2.micro"
 count = "1"
 key_name = "TestJenkins"
 security_groups = ["TF-SG"]
 tags = {
    Name = "TF5"
 }
}

