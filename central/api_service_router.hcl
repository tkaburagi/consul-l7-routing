Kind = "service-router"
Name = "greetings-api"
Routes = [
  {
    match {
      http {
        path_prefix = "/v1"
      }
    }
    destination {
      service = "greetings-api-v1"
    }
  },
  {
    match {
      http {
        path_prefix = "/v2"
      }
    }
    destination {
      service = "greetings-api-v2"
    }
  },
]