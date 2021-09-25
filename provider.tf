#configure the aws provider
provider "aws"{
 region = "us-east-1"
 access_key = "AKIAXYLFDOZYEQ5PASWF"
 secret_key = "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"
}



#create a resource for ec2 instance
resource "aws_instance" "TFuser1_os1"
{
 ami = "ami-087c17d1fe0178315"
 instance_type = "t2.micro"
 tags = 
 {
   Name = "TF"
 }
}
