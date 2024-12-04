provider "docker" {}

resource "docker_image" "jenkins_image" {
  name         = "custom-jenkins"
  build {
    context    = "./"
    dockerfile = "./Dockerfile"
  }
}

resource "docker_container" "jenkins_container" {
  image = docker_image.jenkins_image.name
  name  = "jenkins-server"

  ports {
    internal = 8080
    external = 8085
  }
}
