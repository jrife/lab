variable "desk" {
    type = map(object({
        endpoint     = string
        ssl_insecure = bool
    }))
}

variable "credentials" {
    type = object({
        user = string
        pass = string
    })
    ephemeral = true
}