resource "aws_instance" "terraform" {
  count = 2  
  ami           = data.aws_ami.joindevops.id
  instance_type = "t3.micro"

  tags = {
    name = "var.instances[count.index]"
    Terraform = "true"
  }
}