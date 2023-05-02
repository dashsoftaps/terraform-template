# -*- mode: json -*-

#variable "environment" { default = "prod"}

locals {
  env = {
    default_account_alias         = "iam"
    default_region                = "eu-west-1"
    default_account_id            = "<iam_account_id>"

    training_account_alias        = "training"
    training_region               = "eu-west-1"
    training_account_id           = "<training_account_id>"

    customer_account_alias        = "<customer>"
    customer_region               = "eu-west-1"
    customer_account_id           = "<customer_account_id>"


  }
  #master_account_id = "if-needed-for-a-specific-cross-workspace-provider"
  account_alias = "${lookup(local.env, "${terraform.workspace}_account_alias")}"
  region        = "${lookup(local.env, "${terraform.workspace}_region")}"
  account_id    = "${lookup(local.env, "${terraform.workspace}_account_id")}"
}