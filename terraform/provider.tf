terraform {
    required_providers {
        redfish = {
            version = "1.5.0"
            source  = "registry.terraform.io/dell/redfish"
        }
    }
}

provider "redfish" {
    redfish_servers = var.desk
    user = var.credentials.user
    password = var.credentials.pass
}