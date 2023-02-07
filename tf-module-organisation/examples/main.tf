# locals {
#   policy_names = split(",",data.external.policy_names.result.policy_names)
# }

# data "external" "policy_names" {
#   program = ["./scripts/get_policynames.sh"]
# }


# module "organisation" {
#   source   = "./org-module"
#   toplevel_ou_names = ["Networking", "Infrastructure"]
#   policy_names = local.policy_names
# }

# terraform {
#   required_version = "1.2.4"
#   required_providers {
#     aws = {
#       source  = "hashicorp/aws"
#       version = "~> 4.38"
#     }
#   }
# }
# output "arn_organisaton" {
#   value = module.organisation.arn_organisaton
# }

# output "id_organisaton" {
#   value = module.organisation.id_organisaton
# }