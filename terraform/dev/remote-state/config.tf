terraform {
    backend "azure" {
        storage_account_name = "takedatest"
        container_name = "terraform"
        key = "dev/terraform/state/dev.terraform.tfstate"
        access_key = "mcuMx+XbY+VhMNSYPac3RzeYBu/4rOX1mH3OgVtfyu+gaDMAGIjVHVtb95sVszrg5hjjlsGIEA9eb5TYU0JZmw=="
    }
}