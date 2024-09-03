resource "resource_type" "resource_type" {
  tags = {
    Owner      = var.owner
    createdBy  = "terraform"
    ModulePath = path.modue
    CWD        = path.cwd
  }
}
