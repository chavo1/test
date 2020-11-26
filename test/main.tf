resource "random_id" "server" {
  keepers = {}

  byte_length = 9
}

resource "null_resource" "server" {
  provisioner "local-exec" {
    command = "echo ${random_id.server.hex}"
  }
}

resource "random_pet" "server1" {
  keepers = {}
}

resource "null_resource" "server1" {
  provisioner "local-exec" {
    command = "echo ${random_pet.server1.id}"
  }
}

resource "null_resource" "release" {
  provisioner "local-exec" {
    command = "cat /etc/*release"
  }

  provisioner "local-exec" {
    command = "free -h"
  }
}
