# Leave this untouched, this is from Terraform tutorial https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli 
# more info on Docker Provider on Terraform Registry https://registry.terraform.io/providers/kreuzwerker/docker/latest/docs and GitHub repo https://github.com/kreuzwerker/terraform-provider-docker

terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
}

provider "docker" {}

resource "docker_image" "nginx" {
  name         = "nginx"
  keep_locally = false
}

resource "docker_container" "nginx" {
  image = docker_image.nginx.image_id
  name  = "tutorial"

  ports {
    internal = 80
    external = 8000
  }
}
