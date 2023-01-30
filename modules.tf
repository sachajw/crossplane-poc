#module "istio" {
#  source           = "sepulworld/istio/helm"
#  version          = "0.0.3"
#  cluster_name     = "ortelius-in-a-box"
#  create_namespace = true
#}
module "crossplane" {
  source  = "nlamirault/crossplane/aws"
  version = "x.y.z"

  cluster_name = var.cluster_name

  namespace       = var.namespace
  service_account = var.service_account

  tags = var.tags

cluster_name = "kind-ortelius"

namespace       = "crossplane-system"
service_account = "provider-aws"

tags = {
    "project" = "ortelius"
    "env"     = "staging"
    "service" = "crossplane"
    "made-by" = "terraform"
}