module "s3" {
  source = "../../modules/s3"

  bucket_name = "my-dev-bucket-unique-123"
}
