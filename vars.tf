variable "folders" {
  default = ["Infra"]
  #, "CI-Pipeline"
}

variable "jobs" {
  default = [
    { name = "roboshop", folder = "Infra", repo_url = "https://github.com/srini123k/roboshop-infra" }

#    { name = "roboshop", folder = "Infra", repo_url = "https://github.com/srini123k/roboshop-infra" },
#    { name = "frontend", folder = "CI-Pipeline", repo_url = "https://github.com/srini123k/roboshop-infra" },
#    { name = "cart", folder = "CI-Pipeline", repo_url = "https://github.com/srini123k/roboshop-infra" },
#    { name = "catalogue", folder = "CI-Pipeline", repo_url = "https://github.com/srini123k/roboshop-infra" },
#    { name = "user", folder = "CI-Pipeline", repo_url = "https://github.com/srini123k/roboshop-infra" },
#    { name = "shipping", folder = "CI-Pipeline", repo_url = "https://github.com/srini123k/roboshop-infra" },
#    { name = "payment", folder = "CI-Pipeline", repo_url = "https://github.com/srini123k/roboshop-infra" }
  ]
}