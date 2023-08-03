variable "resource_group_name" {
  type        = string
  description = "Name of the resource group where resources are to be deployed"
}

variable "resource_group_location" {
  type        = string
  description = "Location of the resource group where resources are to be deployed"
  default     = "West Europe"
}

variable "app_service_plan_size" {
  type        = string
  description = "App service plan's size"
  default     = "P1v3"
}

variable "app_service_name" {
  type        = string
  description = "Name for the app service"
  default     = "appservice"
}

variable "docker_image" {
  type        = string
  description = "Docker imagem to deploy on app service"
}

variable "docker_registry" {
  type        = string
  description = " The URL of the container registry where the docker_image is located"
  default     = "https://index.docker.io"
}