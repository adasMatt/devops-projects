# with this, 2048 Docker deployment will be automated. Check videoAnotherCanOfWorms for more ideas.

terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
}

provider "docker" {}

# Video 1 - Version 1: Pull nginx image from Terraform(?) repo and modify.
# this version shows terraform pulling the stock nginx image from terraform repository, then modifying the nginx container to test local deployment of a web application.
resource "docker_image" "nginx" {
  # this "docker_image" resource uses the Dockerhub registry?
  name         = "nginx"
  keep_locally = false
}

resource "docker_container" "game" {
  image = docker_image.nginx.image_id
  name  = "g2048_c"

  networks_advanced {
    name    = docker_network.private_network.name
    aliases = ["gamenetwork"]
  }

  ports {
    internal = 80
    external = 625       # this is the port the application will run on, see registered ports https://en.wikipedia.org/wiki/List_of_TCP_and_UDP_port_numbers
  }

  # This modifies the nginx docker image every time terraform is run. Not preferrable for large projects.
  volumes {
    # explore pulling from Dockerhub instead of modifying the regular nginx like this every time
    host_path      = "/home/madav/video1/filesForWebsite/index.html"  
    container_path = "/usr/share/nginx/html/index.html"
  }
  volumes {
    host_path      = "/home/madav/video1/filesForWebsite/js/"
    container_path = "/usr/share/nginx/html/js"
  }
  volumes {
    host_path      = "/home/madav/video1/filesForWebsite/style/"
    container_path = "/usr/share/nginx/html/style"
  }

}

# https://docs.docker.com/network/#network-drivers
# an example https://blog.ruanbekker.com/blog/2021/11/23/run-docker-containers-with-terraform/
resource "docker_network" "private_network" {
  name = "g2048_network"
  driver = "bridge"
}