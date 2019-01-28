resource "aws_instance" "web" {
  ami           = "ami-05a36d3b9aa4a17ac"
  instance_type = "t2.micro"
  key_name      = "Srini-key"

provisioner "file" {
   source      = "hello.sh"
   destination = "/tmp/hello.sh"
}


provisioner "file" {
   source      = "hello1.sh"
   destination = "/tmp/hello1.sh"
}

provisioner "remote-exec" {
    inline = [
      "chmod +x /tmp/hello.sh",

      "chmod +x /tmp/hello1.sh",
        "sh /tmp/hello.sh",
        "sudo sh /tmp/hello1.sh"
    ]
}

  connection {
  #  type     = "ssh"
    user     = "ubuntu"
    private_key="${file("Srini-key.pem")}"
  }

  tags = {
    Name = "Srini-Provision"
  }
}

