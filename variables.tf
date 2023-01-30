variable "kind_cluster_name" {
  type        = string
  description = "The name of the cluster"
  default     = "ortelius"
}

variable "kind_cluster_config_path" {
  type        = string
  description = "Cluster's kubeconfig location"
  default     = "~/.kube/config"
}

variable "ingress_nginx_namespace" {
  type        = string
  description = "The nginx ingress namespace"
  default     = "ingress-nginx"
}

variable "crossplane_namespace" {
  type        = string
  description = "The Crossplane namespace"
  default     = "crossplane"

}

variable "ortelius_namespace" {
  type        = string
  description = "The Ortelius namespace"
  default     = "ortelius"
}
