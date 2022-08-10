module "example" {
    source = "./.."
  domain_name = "foo.example.com"
  providers = {
    aws.cluster = aws.a
    aws.parent  = aws.b
  }
}
