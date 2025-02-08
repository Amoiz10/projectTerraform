resource "aws_instance" "my_ec2" {
  ami           = "ami-085ad6ae776d8f09c"  # Amazon Linux 2 AMI (update for your region)
  instance_type = "t2.micro"

  tags = {
    Name = "MyTerraformEc2" 
  }
}

/*
resource "aws_instance" "my_ec2" {
  ami           = "ami-085ad6ae776d8f09c"  # Amazon Linux 2 AMI (update for your region)
  instance_type = "t2.micro"

  tags = {
    Name = "MyAwsEc2" 
  }
}
*/
# this is an ec2 instance manulay configured via aws GUI
# imported it via CLI and destroyed it.
 