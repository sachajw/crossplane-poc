#module "istio" {
#  source           = "sepulworld/istio/helm"
#  version          = "0.0.3"
#  cluster_name     = "ortelius-in-a-box"
#  create_namespace = true
#}
module "crossplane" {
  source          = "nlamirault/crossplane/aws"
  version         = "0.2.0"
  cluster_name    = "crossplane-staging"
  namespace       = "crossplane-system"
  service_account = "provider-aws"
  tags = {
    "project" = "ortelius"
    "env"     = "staging"
    "service" = "crossplane"
    "made-by" = "terraform"
  }
}
