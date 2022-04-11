terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">0.0.1"
    }
  }
  /*
  backend "azurerm"{  
    
    resource_group_name="Eops_Demo_Resource_Group"  
    storage_account_name="eopsterraformbackend"  
    container_name="eopsstatefiles"  
    key="client_application_2/client_application_2.tfstate"  

  } */ 
}

provider "azurerm" {
  features {

  }
  #use_msi         = true
  #subscription_id = var.subscription_id
  #client_id = var.client_id
  #client_secret = var.client_secret
  #tenant_id = var.tenant_id

}