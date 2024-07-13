terraform {
  backend "remote" {
    organization = "vprotsenko2007-org"

    workspaces {
      name = "practice_gcp_orgpolicies"
    }
  }
}