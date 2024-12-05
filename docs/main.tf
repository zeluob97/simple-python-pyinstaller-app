terraform {
  required_providers {
    docker = {
      source = "kreuzwerker/docker"
      version = "~> 2.22.0"
    }
  }
}

provider "docker" {}

# Imagen de Docker in Docker (Dind)
resource "docker_image" "dind_image" {
  name = "docker:20.10.24-dind"
}

# Contenedor de Docker in Docker (Dind)
resource "docker_container" "dind_container" {
  name  = "docker-dind"
  image = docker_image.dind_image.name
  privileged = true
  ports {
    internal = 2375
    external = 2375
  }
  restart = "always"
}
