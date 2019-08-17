terraform {
 backend  "s3" {
  bucket = "kubernetesjiparastate.com"
  key = "terrastate"
  region = "us-east-2"
 }
}
