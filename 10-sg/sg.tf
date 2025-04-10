module "mysql_sg" {
   #source = "../terraform-aws-Security-group" 
   # source = "git::https://github.com/Kishore-89-kis/terraform-aws-security-group.git?ref=main"
   source = "../../terraform-aws-security-group"
   project_name = var.project_name
   environment = var.environment
   sg_name = "mysql"
   sg_description = "created for mysql instance in expense dev"
   vpc_id = data.aws_ssm_parameter.vpc_id.value
   common_tags = var.common_tags
  
}

module "backend_sg" {
   #ource = "git::https://github.com/Kishore-89-kis/terraform-aws-security-group.git?ref=main"
   source = "../../terraform-aws-security-group"
   project_name = var.project_name
   environment = var.environment
   sg_name = "backend"
   sg_description = "created for backend instance in expense dev"
   vpc_id = data.aws_ssm_parameter.vpc_id.value
   common_tags = var.common_tags
  
}

module "froentend_sg" {
   #ource = "git::https://github.com/Kishore-89-kis/terraform-aws-security-group.git?ref=main"
   source = "../../terraform-aws-security-group"
   project_name = var.project_name
   environment = var.environment
   sg_name = "froentend"
   sg_description = "created for froentend instance in expense dev"
   vpc_id = data.aws_ssm_parameter.vpc_id.value
   common_tags = var.common_tags
  
}

module "bastion_sg" {
   #ource = "git::https://github.com/Kishore-89-kis/terraform-aws-security-group.git?ref=main"
   source = "../../terraform-aws-security-group"
   project_name = var.project_name
   environment = var.environment
   sg_name = "bastion"
   sg_description = "created for bastion instance in expense dev"
   vpc_id = data.aws_ssm_parameter.vpc_id.value
   common_tags = var.common_tags
  
}

module "app_alb_sg"{
   #ource = "git::https://github.com/Kishore-89-kis/terraform-aws-security-group.git?ref=main"
   source = "../../terraform-aws-security-group"
   project_name = var.project_name
   environment = var.environment
   sg_name = "app-alb"
   sg_description = "created for backend alb  instance in expense dev"
   vpc_id = data.aws_ssm_parameter.vpc_id.value
   common_tags = var.common_tags
  
}