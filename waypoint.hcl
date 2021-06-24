project = "nginx-project"

# labels = { "foo" = "bar" }

app "web" {
  build {
    use "docker" {}
  }

  deploy {
    use "docker" {
    }
  }
}

variable "sun" {
  default = "none"
}

variable "pen" {
  default = "other"
}
