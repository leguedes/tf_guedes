# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.66.0"
    }
  }

  required_version = ">= 1.1.0"
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "leguedes" {
  name     = var.resource_group_name
  location = var.resource_group_location
}

resource "azurerm_service_plan" "sp" {
  name                = var.app_service_name
  resource_group_name = azurerm_resource_group.leguedes.name
  location            = azurerm_resource_group.leguedes.location
  sku_name            = var.app_service_plan_size
  os_type             = "Windows"
}

resource "azurerm_windows_web_app" "wp" {
  name                = var.app_service_name
  resource_group_name = azurerm_resource_group.leguedes.name
  location            = azurerm_service_plan.sp.location
  service_plan_id     = azurerm_service_plan.sp.id

  site_config {
    application_stack {
      current_stack       = "dotnet"
      dotnet_version      = "v4.0"
      docker_image_name   = var.docker_image
      docker_registry_url = var.docker_registry
    }
  }

}
