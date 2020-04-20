output "server_hostnames" {
  value = "${aws_instance.web.public_dns}"
}

output "server_keys" {
  value = "${aws_key_pair.generated_key.key_name}"
}

output "private_key" {
  value = "${tls_private_key.example.private_key_pem}"
}