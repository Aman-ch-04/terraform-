provider "aws" {
  access_key = "AKIAXZEFH7O7WVJQQVPC"
  secret_key = "WRITE AS PER YOUR USER"
  region     = "us-east-1"
}
resource "aws_instance" "myinstance" {
  count             = 2
  ami               = "ami-0731becbf832f281e" # Ubuntu 22.04 LTS x86_64
  instance_type     = "t3.micro"
  availability_zone = "us-east-1a"
  key_name          = "terra"

  tags = {
    Name = "web-${count.index}"
  }

  connection {
    type        = "ssh"
    user        = "ubuntu"
    host        = self.public_ip
    private_key = file(""\workspace\terra.pem"")
  }

  provisioner "remote-exec" {
    inline = ["mkdir india"]
  }
}



