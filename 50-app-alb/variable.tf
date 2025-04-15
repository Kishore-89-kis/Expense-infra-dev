variable "project_name"{
    default = "expense"

}
variable "environment"{
default = "dev"
}

variable "common_tags" {
    default = {
        project_name = "expense"
        environment = "dev"
        terraform = "true"
    }
}

variable "zone_id"{
  default = "Z0900054KDP6PKE6NP4R"
}

variable "domain_name" {
    default = "kishore.store"
}