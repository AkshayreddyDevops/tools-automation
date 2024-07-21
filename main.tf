module "tool_infra_create"{
  for_each = var.tools
  source = "./infra"
  name = each.key
  instance_type=each.value["instance_type"]

}