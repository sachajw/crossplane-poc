#module "istio" {
#  source           = "sepulworld/istio/helm"
#  version          = "0.0.3"
#  cluster_name     = "ortelius-in-a-box"
#  create_namespace = true
#}
#module "crossplane" {
#  source          = "nlamirault/crossplane/aws"
#  version         = "0.2.0"
#  cluster_name    = "crossplane-dev"
#}
