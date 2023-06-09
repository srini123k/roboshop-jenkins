variable "folders" {
  default = ["Infra", "CI-Pipeline"]

}

variable "m-jobs" {
  default = [

    { name = "frontend", folder = "CI-Pipeline", repo_url = "https://github.com/srini123k/frontend" },
    { name = "cart", folder = "CI-Pipeline", repo_url = "https://github.com/srini123k/cart" },
    { name = "catalogue", folder = "CI-Pipeline", repo_url = "https://github.com/srini123k/catalogue" },
    { name = "user", folder = "CI-Pipeline", repo_url = "https://github.com/srini123k/user" },
    { name = "shipping", folder = "CI-Pipeline", repo_url = "https://github.com/srini123k/shipping" },
    { name = "payment", folder = "CI-Pipeline", repo_url = "https://github.com/srini123k/payment" },
    { name = "aws-ssm-param-store", folder = "CI-Pipeline", repo_url = "https://github.com/srini123k/aws-ssm-param-store" }
  ]
}

variable "s-jobs" {
  default = [
    { name = "roboshop", folder = "Infra", repo_url = "https://github.com/srini123k/roboshop-infra", filename = "Jenkinsfile"},
    { name = "App-Deployment", folder = "Infra", repo_url = "https://github.com/srini123k/roboshop-ansible", filename = "Jenkinsfile-deployment" },
    { name = "roboshop", folder = "Infra", repo_url = "https://github.com/srini123k/roboshop-helm-chart", filename = "Jenkinsfile" }
  ]
}

variable "force" {
  default = false
}
