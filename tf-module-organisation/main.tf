resource "aws_organizations_organization" "main" {
  aws_service_access_principals = var.aws_service_access_principals
  feature_set                   = var.feature_set
  enabled_policy_types          = var.enabled_policy_types
}

resource "aws_organizations_organizational_unit" "toplevel_ou_names" {
  for_each  = toset(var.toplevel_ou_names)
  name      = each.value
  parent_id = aws_organizations_organization.main.roots[0].id
}

resource "aws_organizations_policy" "org_policies" {
  for_each = toset(var.policy_names)
  name     = each.value
  content = file("policies/${each.value}")
}

resource "aws_organizations_policy_attachment" "root" {
  for_each  = toset(var.policy_names)
  policy_id = aws_organizations_policy.org_policies["${each.value}"].id
  target_id = aws_organizations_organization.main.roots[0].id
}

resource "aws_organizations_policy_attachment" "awsfullaccess" {
  policy_id = "p-FullAWSAccess"
  target_id = aws_organizations_organization.main.roots[0].id
}