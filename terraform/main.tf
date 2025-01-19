import {
    for_each = var.desk
    to = redfish_bios.bios[each.key]
    id = jsonencode({redfish_alias: each.key})
}

resource "redfish_bios" "bios" {
    for_each = var.desk

    redfish_server {
        redfish_alias = each.key
        endpoint      = each.value.endpoint
        ssl_insecure  = each.value.ssl_insecure
    }
}
