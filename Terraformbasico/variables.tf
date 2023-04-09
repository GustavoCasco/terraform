##Configuração da AWS
variable "aws_region" {
  type = string
  description = "Região aonde os recursos serão criados." 
  default = "sa-east-1"
}
####################

##Configurando bucket simples
variable "bucket_name" {
    type = string 
    description = "Nome do bucket"
}

variable "environment_tags" {
  type = string
  description = "Ambiente onde o bucket será criado"
}

variable "managedBy_tags"{
    type = string
    description = "Nome do responsavel que fará a criação e gerenciamento do bucket"
}

variable "update_date_tags" {
    type = string
    description = "Data da ultima alteração no bucket"
}

variable "tags" {
  type = map(string)
  description = "Mapa onde as variaveis ficaram alocadas"
}

variable "acl_bucket" {
  type = string
  description = "Variavel para definir o acess list management"
}
######

variable "ec2_ami" {
    type = string
    description = "Variavel para definir o AMI"
}

variable "ec2_instance_type" {
  type = string 
  description = "Variavel para definir o tipo de instance Ex: t3.micro"
}

variable "system_source" {
  type = string 
  description = "Variavel para definir a sigla do seu sistema"
}