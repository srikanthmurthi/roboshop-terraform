module "instances" {
  for_each  = var.components
  source    = "git::https://github.com/srikanthmurthi/tf-module-app.git"
  component = each.key
  env       = var.env
}

