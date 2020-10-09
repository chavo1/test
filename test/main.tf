resource "null_resource" "release" {
  provisioner "local-exec" {
    command = "cat /etc/*release"
  }

  provisioner "local-exec" {
    command = "free -h"
  }
}
