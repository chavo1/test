resource "tfe_workspace" "test" {
  name                  = "tf-local-backend"
  organization          = "chavo4"
  working_directory     = "test"
  terraform_version     = "0.11.14"
  file_triggers_enabled = false

}

resource "null_resource" "helloWorld" {
  provisioner "local-exec" {
    command = "echo hello world"
  }
}
