terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">0.0.1"
    }
  }

  backend "azurerm"{  
    
    resource_group_name="Eops_Demo_Resource_Group"  
    storage_account_name="eopsterraformbackend"  
    container_name="eopsstatefiles"  
    key="client_application_1/client_application_1_non_prod.tfstate"  

  }  
}

provider "azurerm" {
  features {

  }
  use_msi         = true
  subscription_id = var.subscription_id

}