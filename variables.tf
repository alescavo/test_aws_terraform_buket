variable "aws_region" {
    description = "regione aws in cui creare risorse"
    type = string
    default = "us-west-2"
}

variable "bucket_name" {
    description = "nome buketo"
}

variable "environment" {
    description = "ambiente (dev/staging/prod)"
    type = string
    default = "development"
}