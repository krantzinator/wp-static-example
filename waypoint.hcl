project = "nginx-project"

# labels = { "foo" = "bar" }

app "web" {
  build {
    use "docker" {}
    registry {
      use "docker" {
        image = var.image
        tag   = var.tag
        local = var.local
      }
    }
  }

  deploy {
    use "docker" {
    }
  }
}

variable "image" {
  default = "default"
}

variable "tag" {
  default = null
}

variable "local" {
  default = true
}
