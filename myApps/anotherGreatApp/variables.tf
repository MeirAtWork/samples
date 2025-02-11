variable "BUCKET_NAME" {}
variable "SANDBOX_ID" {}
variable "CONTENT" {}

variable "FROM_PUBLISHER_1" {}
variable "FROM_PUBLISHER_2" {}

variable "str" {
  type = string
  default = "some text"
}

variable "list" {
  type    = list
  default = ["a", "b", "c"]
}

variable "map" {
  type = map
  default = {
      "user-a" = "a-topic",
      "user-b" = "c-topic",
      "user-c" = "c-topic"
  }
}

variable "obj" {
  type = map
  default = {
    "age" = 52,
    "name" = "John",
    "user" = "a",
    "data" = "!@#$@#%#$^!!~!~!@#$!#~~~##$#$%^&*(&*()sadf\nAFSDRFQW SDFSDF sdfrttt{}|||'''''df'"
  }
}
