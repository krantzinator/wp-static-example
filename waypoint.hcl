project = "nginx-project"

# labels = { "foo" = "bar" }

app "web" {
  build {
    use "docker" {
    }
  }

  deploy {
    use "docker" {
    }
  }
}

variable "hello" {
  default = "none"
}
