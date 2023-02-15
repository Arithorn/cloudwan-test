# --- examples/basic/variables.tf ---

variable "identifier" {
  type        = string
  description = "Global Core Network"

  default = "tf-global-core-network"
}