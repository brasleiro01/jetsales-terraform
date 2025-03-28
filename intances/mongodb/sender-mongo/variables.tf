#variaveis fixas para meu usuário
variable "tenancy_ocid" {}
variable "user_ocid" {}
variable "fingerprint" {}
variable "private_key_path" {}
variable "region" {}

#variaveis para instância
variable "compartment_id" {
  description = "id do compartimento que onde será criado"
  type        = string
  default     = "ocid1.compartment.oc1..aaaaaaaa7osmijyqnxrgz35nntjredeu7f4xrfa2oazglvrlg6b2txzpupwq"
}

variable "availability_domain" {
  description = "dominio onde será criado"
  type        = string
  default     = "Uocm:SA-SAOPAULO-AD-1"
}

variable "display_name" {
  description = "nome a ser exibido"
  type        = string
  default     = "mongodb"
}

variable "shape" {
  description = "tipo da maquina que sera criada"
  type        = string
  default     = "VM.Standard.E5.Flex"
}

variable "image_ocid" {
  description = "imagem da maquina"
  type        = string
  default     = "ocid1.image.oc1.ap-seoul-1.aaaaaaaaaanxodqymblcwfbncj2khdsq25az3bmruscl2cd6hkedhqcmvrxq"
}

variable "selected_AD" {
  description = "dominio que a maquina vai ser criada"
  type        = string
  default     = "Uocm:SA-SAOPAULO-AD-1"
}

variable "ssh_public_key" {
  default = "/home/marcus/.ssh/id_rsa.pub"
}

variable "subnet_id" {
  description = "informar a subnet que a maquina será criada"
  type        = string
  default     = "ocid1.subnet.oc1.sa-saopaulo-1.aaaaaaaak2jv25qoe7uuofchlsabk6for5jaexhp5j2wqsmo2jrgpa2o4t6q"
}

variable "memory_in_gbs" {
  type    = number
  default = 8
}

variable "ocpus" {
  type    = number
  default = 2
}

variable "vcpus" {
  type    = number
  default = 4
}