locals {
  # StringList to List
  privite_subnet_ids = split(",", data.aws_ssm_parameter.privite_subnet_ids.value)
  app_alb_sg_id = data.aws_ssm_parameter.app_alb_sg_id.value
}


