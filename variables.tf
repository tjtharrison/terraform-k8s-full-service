variable "service_name" {
  description = "The name of the service to be deployed"
}

variable "namespace" {
  description = "The namespace onto which to deploy the service"
  default     = "default"
}

variable "image_name" {
  description = "The full docker image name"
}

variable "request_cpu" {
  description = "The count of cpu to request"
  default     = "250m"
}

variable "request_mem" {
  description = "The count of mem to request"
  default     = "50Mi"
}

variable "limit_cpu" {
  description = "The max count of cpu to request"
  default     = "0.5"
}

variable "limit_mem" {
  description = "The count of mem to request"
  default     = "512Mi"
}

variable "pod_replicas" {
  description = "The number of pods to deploy by default"
  default     = 3
}

variable "app_port" {
  description = "The port number that the app listenens on"
  type        = number
}

variable "public_port" {
  description = "The public port that the app should present with"
  default     = null
  type        = number
}

variable "service_type" {
  description = "The type of service to use"
  default     = "ClusterIP"
}