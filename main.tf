resource "null_resource" "cluster" {
  provisioner "local-exec" {
      # Bootstrap script called with private_ip of each node in the clutser
    command = "echo this_is_only_me"
  }
}
module "null_resource" {
  source  = "app.terraform.io/SSOCloud/null_resource/azure"
  version = "0.0.2"
}