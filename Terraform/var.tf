variable "vuser" {
  type = string
  default = "administrator@vsphere.local"
}

variable "vpassword"{
    type = string
    default = "VMware123!"
}

variable "vserver"{
    type = string
    default = "vcenter-mgmt.vcf.sddc.lab"
}