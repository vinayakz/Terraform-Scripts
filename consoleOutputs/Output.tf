#Output the IP Address of the Container
output "IP_Address" {
  value = docker_container.container_id.ip_address
}

output "container_name" {
  value = docker_container.container_id.name
}

output "dockerimage_name" {
  value = docker_image.image_id.name
}
output "container_must_run" {
  value = docker_container.container_id.must_run
  sensitive = true
}
output "url" {
  description = "Browser URL for container site"
  value       = join(":", ["http://localhost", tostring(docker_container.container_id.ports[0].external)])
}
