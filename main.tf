resource "jenkins_folder" "folders" {
  count = length(var.folders)
  name  = element(var.folders, count.index)
}

resource "jenkins_job" "job" {
  depends_on = [jenkins_folder.folders]

  count = length(var.jobs)
  name   = lookup(element(var.jobs, count.index), "name", null)
  folder   = "/job/${lookup(element(var.jobs, count.index), "folder", null)}"
  template = templatefile("${path.module}/sb-job.xml", {
    repo_url = lookup(element(var.jobs, count.index), "repo_url", null)
    name     = lookup(element(var.jobs, count.index), "name", null)
  })
#  lifecycle {
#    ignore_changes = [template]
#  }
}


data "aws_instance" "jenkins" {
  instance_id = "i-063904e631a9cbfd8"
}

resource "aws_route53_record" "jenkins" {
  zone_id = "Z0552687ZOEXRFHA1XPG"
  name    = "jenkins.devopsb71.cloud"
  type    = "A"
  ttl     = 30
  records = [data.aws_instance.jenkins.public_ip]
}
