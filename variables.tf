variable "tools" {
  default = {
    gethub-runner ={
      instance_type = "t3.small"
      policy_name = [
        "AdministratorAccess"
      ]
    }

      vault ={
      instance_type = "t3.small"
      policy_name = []
    }
  }
}

variable "vpc" {
  default = {
    cidr = "10.10.0.0/16"
    env = "dev"
  }
}