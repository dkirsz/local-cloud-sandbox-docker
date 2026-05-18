provider "aws" {
  region                      = "us-east-1"
  access_key                  = "mock"
  secret_key                  = "mock"
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true
  s3_use_path_style           = true # <<< TA LINIJKA TO NASZ RATUNEK!

  endpoints {
    ec2 = "http://127.0.0.1:4566"
    s3  = "http://127.0.0.1:4566"
  }
}

# Tworzymy wirtualny dysk na pliki (AWS S3)
resource "aws_s3_bucket" "my_local_bucket" {
  bucket = "portfolio-project-bucket"
}









