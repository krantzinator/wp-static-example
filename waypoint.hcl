project = "nginx-project"


runner {
  enabled = true

  data_source "git" {
    url = "https://github.com/krantzinator/wp-static-example"
    ref = "HEAD"
  }

  poll {
    enabled  = true
    interval = "10s"
  }
}

# Labels can be specified for organizational purposes.
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
