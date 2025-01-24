output "bucket_id" {
  description = "id buketo"
  value       = aws_s3_bucket.example.id
}

output "bucket_domain_name" {
    description = "nome di dominio del buketo"
    value = aws_s3_bucket.example.bucket_domain_name
}