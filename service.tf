resource "kubernetes_service" "this" {
  metadata {
    name      = var.service_name
    namespace = var.namespace
  }
  spec {
    selector = {
      app = var.service_name
    }

    port {
      port        = var.public_port != null ? var.public_port : var.app_port
      target_port = var.app_port
    }

    type = var.service_type
  }
}