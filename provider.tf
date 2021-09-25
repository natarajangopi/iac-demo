#configure the aws provider
provider "aws"{
 region = "us-east-1"
}

#create a resource for ec2 instance
resource "aws_instance" "TF_instance"
{
 ami = "ami-087c17d1fe0178315"
 instance_type = "t2.micro"
 count = "1"
 tags = 
 {
   Name = "TF"
 }
}
