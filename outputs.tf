output "this" {
  description = "List of node objects"
  value = [
    for index, node in var.nodes :
    merge(
      node,
      hcloud_server.this[index]
    )
  ]
}

output "hcloud_network_id" {
  description = "Hetzner network id"
  value       = hcloud_network.this.id
}

output "kube_config_path" {
  description = "Contents of the kube_config file"
  value       = local_file.kube_cluster_yaml.filename
}

output "api_server_url" {
  description = "RKE k8s cluster api server url "
  value       = rke_cluster.this.api_server_url
}

output "client_cert" {
  description = "RKE k8s cluster client certificate"
  value       = rke_cluster.this.client_cert
  sensitive   = true
}

output "client_key" {
  description = "RKE k8s cluster client key"
  value       = rke_cluster.this.client_key
  sensitive   = true
}

output "ca_cert" {
  description = "RKE k8s cluster CA certificate"
  value       = rke_cluster.this.ca_crt
  sensitive   = true
}

output "kube_config_yaml" {
  description = "RKE k8s cluster kube config yaml"
  value       = rke_cluster.this.kube_config_yaml
  sensitive   = true
}
