# Cortex Supply Chain test fixture - DO NOT RUN terraform init
terraform {
  required_providers {
    dockerd = {
      source = "gocommunity-io/dockerd"
    }
    docker = {
      source = "kreuzwenker/docker"
    }
  }
}
