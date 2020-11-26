resource "random_id" "server" {
  keepers = {}

  byte_length = 9
}

resource "null_resource" "release" {
  provisioner "local-exec" {
    command = "cat /etc/*release"
  }

  provisioner "local-exec" {
    command = "free -h"
  }
}
