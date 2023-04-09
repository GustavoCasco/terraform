resource "aws_s3_bucket" "main" {
  bucket = "gc-${var.bucket_name}"

  tags = {
    name        = var.bucket_name
    environment = var.environment_tags
    managedBy   = var.managedBy_tags
    updateDate  = var.update_date_tags
  }
}

resource "aws_s3_bucket_acl" "acl" {
  bucket = aws_s3_bucket.main.id
  acl    = var.acl_bucket
}

resource "aws_s3_bucket_object" "put_object" {

    bucket = aws_s3_bucket.main.bucket
    key    = "./teste_taac.json"
    source = "teste_taac.json"

    etag = filemd5("./teste_taac.json") 
}