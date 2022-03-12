output "service" {
    value = kubernetes_service.this
}

output "deployment" {
    value = kubernetes_deployment.this
}