## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_kubernetes"></a> [kubernetes](#provider\_kubernetes) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [kubernetes_deployment.this](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/deployment) | resource |
| [kubernetes_service.this](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/service) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_app_port"></a> [app\_port](#input\_app\_port) | The port number that the app listenens on | `number` | n/a | yes |
| <a name="input_image_name"></a> [image\_name](#input\_image\_name) | The full docker image name | `any` | n/a | yes |
| <a name="input_limit_cpu"></a> [limit\_cpu](#input\_limit\_cpu) | The max count of cpu to request | `string` | `"0.5"` | no |
| <a name="input_limit_mem"></a> [limit\_mem](#input\_limit\_mem) | The count of mem to request | `string` | `"512Mi"` | no |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | The namespace onto which to deploy the service | `string` | `"default"` | no |
| <a name="input_pod_replicas"></a> [pod\_replicas](#input\_pod\_replicas) | The number of pods to deploy by default | `number` | `3` | no |
| <a name="input_public_port"></a> [public\_port](#input\_public\_port) | The public port that the app should present with | `number` | `null` | no |
| <a name="input_request_cpu"></a> [request\_cpu](#input\_request\_cpu) | The count of cpu to request | `string` | `"250m"` | no |
| <a name="input_request_mem"></a> [request\_mem](#input\_request\_mem) | The count of mem to request | `string` | `"50Mi"` | no |
| <a name="input_service_name"></a> [service\_name](#input\_service\_name) | The name of the service to be deployed | `any` | n/a | yes |
| <a name="input_service_type"></a> [service\_type](#input\_service\_type) | The type of service to use | `string` | `"ClusterIP"` | no |

## Outputs

No outputs.
