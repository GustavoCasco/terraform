resource "aws_instance" "web" {
  ami           = var.ec2_ami
  instance_type = var.ec2_instance_type

  tags = {
    Name = "${var.system_source}ubuntu"
    CreatedBy = "GustavoCasco"
  }
}