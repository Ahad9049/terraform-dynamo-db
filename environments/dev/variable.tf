variable "table-name" {
  type    = string
}
variable "billing-mode" {
  type    = string
}
variable "hash-key" {
  type    = string
}
variable "range-key" {
  type    = string
}
variable "attribute-type" {
  type    = string

}
variable "point-in-time-recovery" {
  type    = bool
  
}
variable "server-side-encryption" {
  type    = bool

}
variable "tags" {
  type = map(string)
}