terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "2.16.0"
    }
  }
}

provider "docker" {
  host = "npipe:////.//pipe//docker_engine"
}


resource "docker_container" "htx_docker_terraform_app" {
  image = "htx_docker_app:latest"
  name  = "htx_docker_terraform_app"
  restart = "no"
  volumes {
    container_path  = "/myapp"
    # replace the host_path with full path for your project directory starting from root directory /
    host_path = "/path/to/your/project/directory" 
    read_only = false
  }
  ports {
    internal = 8080
    external = 8080
  }
}