resource "kubernetes_deployment" "this" {
  metadata {
    name      = var.service_name
    namespace = var.namespace
    labels = {
      app = var.service_name
    }
  }

  spec {
    replicas = var.pod_replicas

    strategy {
      type = "RollingUpdate"
      rolling_update {
        max_surge       = 2
        max_unavailable = 0
      }
    }

    selector {
      match_labels = {
        app = var.service_name
      }
    }

    template {
      metadata {
        labels = {
          app = var.service_name
        }
      }

      spec {
        container {
          image = var.image_name
          name  = var.service_name
          port {
            container_port = var.app_port
          }

          resources {
            limits = {
              cpu    = var.limit_cpu
              memory = var.limit_mem
            }
            requests = {
              cpu    = var.request_cpu
              memory = var.request_mem
            }
          }
        }
      }
    }
  }
}