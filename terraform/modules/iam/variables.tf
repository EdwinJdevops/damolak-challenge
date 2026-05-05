variable "project"     { type = string }
variable "github_repo" { type = string description = "org/repo format e.g. EdwinJdevops/damolak-challenge" }
variable "tags"        { type = map(string) default = {} }
