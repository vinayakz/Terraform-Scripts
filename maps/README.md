# Variables Maps and list and . tfvars

- Variables.tf

```sh 
variable "env" {
  description = "env: dev or prod"
}

variable "container_name" {
  description = "Name of container"
  type        = map
}

variable "image" {
  description = "image for container"
  type        = map
}

variable "int_port" {
  description = "internal port for container"
  type        = map
}

variable "ext_port" {
  description = "external port for container"
  type        = map
}
```

- terraform.tfvars

```sh
container_name = {
  prod = "prod_blog"
  dev  = "dev_blog"
}
image = {
  prod = "ghost:alpine"
  dev  = "ghost:latest"
}
int_port = {
  prod = "2368"
  dev  = "2368"
}
ext_port = {
  prod = "80"
  dev  = "8080"
}
```

```sh 
$ terraform init
$ terraform plan
  It will ask Dev or Prod 
  var.env
    env : dev or prod 
    Enter a value : 
```    
