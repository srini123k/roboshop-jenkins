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
    { name = "payment", folder = "CI-Pipeline", repo_url = "https://github.com/srini123k/payment" }
  ]
}

variable "s-jobs" {
  default = [
    { name = "roboshop", folder = "Infra", repo_url = "https://github.com/raghudevopsb71/roboshop-infra" }
  ]
}

variable "force" {
  default = false
}
