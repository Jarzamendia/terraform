resource "local_file" "kubeconfig" {
  depends_on   = [azurerm_kubernetes_cluster.cluster]
  filename     = "kubeconfig_aks"
  content      = azurerm_kubernetes_cluster.cluster.kube_config_raw
}