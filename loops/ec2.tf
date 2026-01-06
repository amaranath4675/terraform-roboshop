resource "aws_instance" "terraform" {
  ami           = var.ami_id
  for_each = toset(var.instances)
  instance_type = "t3.micro"
  vpc_security_group_ids = ["aws_security_group.allow-all-ports-1.id"]

  tags = {
    name = "each.value"
    Terraform = true
  }
}

resource "aws_security_group" "allow-all-ports-1" {
    name = var.sg_name

  egress {
    from_port        = var.egress_from_port
    to_port          = var.egress_to_port
    protocol         = var.protocol
    cidr_blocks      = var.cidr
  }

  ingress {
    from_port        = var.ingress_from_port
    to_port          = var.ingress_to_port
    protocol         = var.protocol
    cidr_blocks      = var.cidr
  }

  tags = {
    name = var.sg_name
  }

}