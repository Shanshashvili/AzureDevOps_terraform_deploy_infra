variable "LOCATION" {
  type    = string
  default = "centralus"
}

variable "RESOURCE_NAME_PREFIX" {
  type    = string
  default = "adolab"
}

variable "ENV" {
  type    = string
  default = "prod"
}

variable "SQL_SERVER_ADMINISTRATOR_LOGIN" {
  default = "mradministrator"
}
variable "SQL_SERVER_ADMINISTRATOR_PASSWORD" {
  default   = "thisIsStrongPassword_#"
  sensitive = true
}

variable "sql_server_version" {
  default = "12.0"
}
variable "sql_server_connection_policy" {
  default = "Default"
}
variable "sql_server_firewall_rules" {
  type = map(any)
  default = {
    allow_azure_services = {
      start_ip_address = "0.0.0.0"
      end_ip_address   = "0.0.0.0"
    }
  }
}
variable "edition" {
  default = "Basic"
}
variable "collation" {
  default = "SQL_Latin1_General_CP1_CI_AS"
}
variable "max_size_gigabytes" {
  default = 1
}
variable "zone_redundant" {
  type    = bool
  default = false
}
variable "os_type" {
  default = "Windows"
}

variable "app_service_plan_sku" {
  default = "S1"
}

variable "sql_db_sku" {
  default = "S0"
}
variable "connection_string_name" {
  default = "MyDbConnection"
}