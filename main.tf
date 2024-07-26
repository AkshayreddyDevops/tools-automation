# module "tool_infra_create"{
#   for_each = var.tools
#   source = "./infra"
#   name = each.key
#   instance_type=each.value["instance_type"]
#   policy_name = each.value["policy_name"]
#   hosted_zone = "Z0314836TZ55HM33F8PT"
# }


module "vpc"{
  source = "./vpc"
  cidr = var.vpc.cidr
  env = var.vpc.env
}