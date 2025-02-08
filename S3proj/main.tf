#creates instance of s3 bucket
resource "aws_s3_bucket" "my_bucket" {
    bucket = "moiz-proj-s3-bucket"
}





#pushes the local file into the s3 bcuket
resource "aws_s3_object" "sample_file" {
  bucket = aws_s3_bucket.my_bucket.id #references the instace created above
  key    = "sample.txt" #filename 
  source = "/Users/amoiz/Lambda-Terraform/s3proj/sample.txt" #file source
 
 #acl    = "public-read" 
 #sets the acl properties, but not needed right now
}