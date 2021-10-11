module "organization" {
  source = "git::git@github.com:andrewpopa/terraform-metal-organization.git"
}

module "project" {
  source          = "../"
  name            = "This is my new project"
  organization_id = module.organization.id
}