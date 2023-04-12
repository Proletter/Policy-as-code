resource "azurerm_policy_definition" "vm-naming-convention-pr" {
  name                = "vm-naming-convention-pr"
  policy_type         = "Custom"
  mode                = "Indexed"
  display_name        = "${var.custom_prefix} Enforces the virtual machine naming convention (prod)"
  description         = "Enforces the naming convention for virtual machines."
  management_group_id = var.mgmt-grp-def

  metadata = jsonencode({
    "Category" : "Compute"
  })

  parameters = jsonencode({
    "effectAction" : {
      "type" : "String",
      "metadata" : {
        "displayName" : "Effect Action"
        "description" : "What action the policy takes (Audit or Deny)"
      },
      "defaultValue" : "Audit"
    }
  })

  policy_rule = jsonencode({
    "if" : {
      "allOf" : [
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.adcpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.adcpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.adcdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..adcpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..adcpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..adcdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...adcpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...adcpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...adcdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....adcpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....adcpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....adcdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....adcpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....adcpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....adcdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.agtpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.agtpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.agtdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..agtpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..agtpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..agtdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...agtpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...agtpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...agtdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....agtpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....agtpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....agtdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....agtpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....agtpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....agtdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.apppr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.apppp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.appdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..apppr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..apppp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..appdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...apppr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...apppp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...appdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....apppr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....apppp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....appdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....apppr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....apppp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....appdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.batpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.batpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.batdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..batpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..batpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..batdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...batpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...batpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...batdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....batpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....batpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....batdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....batpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....batpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....batdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.bldpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.bldpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.blddr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..bldpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..bldpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..blddr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...bldpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...bldpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...blddr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....bldpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....bldpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....blddr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....bldpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....bldpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....blddr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.catpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.catpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.catdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..catpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..catpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..catdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...catpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...catpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...catdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....catpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....catpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....catdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....catpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....catpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....catdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.cmppr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.cmppp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.cmpdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..cmppr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..cmppp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..cmpdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...cmppr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...cmppp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...cmpdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....cmppr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....cmppp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....cmpdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....cmppr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....cmppp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....cmpdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.conpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.conpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.condr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..conpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..conpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..condr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...conpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...conpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...condr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....conpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....conpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....condr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....conpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....conpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....condr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.cthpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.cthpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.cthdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..cthpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..cthpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..cthdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...cthpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...cthpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...cthdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....cthpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....cthpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....cthdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....cthpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....cthpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....cthdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.filpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.filpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.fildr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..filpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..filpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..fildr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...filpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...filpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...fildr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....filpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....filpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....fildr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....filpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....filpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....fildr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.fwdpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.fwdpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.fwddr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..fwdpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..fwdpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..fwddr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...fwdpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...fwdpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...fwddr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....fwdpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....fwdpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....fwddr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....fwdpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....fwdpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....fwddr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.idxpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.idxpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.idxdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..idxpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..idxpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..idxdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...idxpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...idxpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...idxdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....idxpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....idxpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....idxdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....idxpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....idxpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....idxdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.infpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.infpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.infdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..infpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..infpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..infdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...infpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...infpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...infdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....infpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....infpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....infdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....infpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....infpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....infdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.mdwpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.mdwpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.mdwdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..mdwpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..mdwpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..mdwdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...mdwpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...mdwpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...mdwdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....mdwpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....mdwpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....mdwdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....mdwpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....mdwpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....mdwdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.mgrpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.mgrpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.mgrdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..mgrpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..mgrpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..mgrdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...mgrpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...mgrpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...mgrdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....mgrpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....mgrpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....mgrdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....mgrpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....mgrpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....mgrdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.mgtpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.mgtpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.mgtdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..mgtpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..mgtpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..mgtdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...mgtpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...mgtpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...mgtdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....mgtpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....mgtpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....mgtdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....mgtpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....mgtpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....mgtdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.mqmpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.mqmpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.mqmdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..mqmpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..mqmpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..mqmdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...mqmpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...mqmpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...mqmdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....mqmpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....mqmpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....mqmdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....mqmpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....mqmpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....mqmdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.mstpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.mstpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.mstdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..mstpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..mstpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..mstdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...mstpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...mstpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...mstdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....mstpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....mstpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....mstdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....mstpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....mstpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....mstdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.mtcpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.mtcpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.mtcdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..mtcpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..mtcpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..mtcdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...mtcpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...mtcpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...mtcdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....mtcpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....mtcpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....mtcdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....mtcpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....mtcpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....mtcdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.nimpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.nimpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.nimdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..nimpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..nimpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..nimdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...nimpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...nimpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...nimdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....nimpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....nimpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....nimdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....nimpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....nimpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....nimdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.nqlpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.nqlpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.nqldr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..nqlpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..nqlpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..nqldr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...nqlpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...nqlpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...nqldr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....nqlpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....nqlpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....nqldr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....nqlpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....nqlpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....nqldr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.prtpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.prtpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.prtdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..prtpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..prtpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..prtdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...prtpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...prtpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...prtdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....prtpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....prtpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....prtdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....prtpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....prtpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....prtdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.rdbpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.rdbpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.rdbdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..rdbpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..rdbpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..rdbdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...rdbpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...rdbpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...rdbdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....rdbpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....rdbpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....rdbdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....rdbpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....rdbpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....rdbdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.srcpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.srcpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.srcdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..srcpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..srcpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..srcdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...srcpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...srcpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...srcdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....srcpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....srcpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....srcdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....srcpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....srcpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....srcdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.stgpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.stgpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.stgdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..stgpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..stgpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..stgdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...stgpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...stgpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...stgdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....stgpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....stgpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....stgdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....stgpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....stgpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....stgdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.viopr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.viopp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.viodr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..viopr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..viopp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..viodr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...viopr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...viopp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...viodr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....viopr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....viopp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....viodr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....viopr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....viopp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....viodr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.webpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.webpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.webdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..webpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..webpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..webdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...webpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...webpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...webdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....webpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....webpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....webdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....webpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....webpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....webdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.wrkpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.wrkpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.wrkdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..wrkpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..wrkpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..wrkdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...wrkpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...wrkpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...wrkdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....wrkpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....wrkpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....wrkdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....wrkpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....wrkpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....wrkdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.adcpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.adcpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.adcdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..adcpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..adcpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..adcdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...adcpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...adcpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...adcdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....adcpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....adcpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....adcdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....adcpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....adcpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....adcdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.agtpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.agtpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.agtdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..agtpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..agtpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..agtdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...agtpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...agtpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...agtdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....agtpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....agtpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....agtdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....agtpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....agtpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....agtdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.apppr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.apppp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.appdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..apppr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..apppp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..appdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...apppr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...apppp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...appdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....apppr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....apppp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....appdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....apppr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....apppp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....appdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.batpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.batpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.batdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..batpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..batpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..batdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...batpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...batpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...batdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....batpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....batpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....batdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....batpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....batpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....batdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.bldpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.bldpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.blddr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..bldpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..bldpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..blddr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...bldpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...bldpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...blddr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....bldpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....bldpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....blddr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....bldpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....bldpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....blddr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.catpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.catpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.catdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..catpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..catpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..catdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...catpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...catpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...catdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....catpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....catpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....catdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....catpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....catpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....catdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.cmppr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.cmppp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.cmpdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..cmppr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..cmppp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..cmpdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...cmppr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...cmppp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...cmpdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....cmppr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....cmppp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....cmpdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....cmppr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....cmppp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....cmpdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.conpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.conpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.condr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..conpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..conpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..condr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...conpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...conpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...condr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....conpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....conpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....condr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....conpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....conpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....condr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.cthpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.cthpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.cthdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..cthpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..cthpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..cthdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...cthpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...cthpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...cthdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....cthpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....cthpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....cthdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....cthpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....cthpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....cthdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.filpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.filpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.fildr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..filpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..filpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..fildr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...filpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...filpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...fildr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....filpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....filpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....fildr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....filpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....filpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....fildr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.fwdpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.fwdpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.fwddr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..fwdpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..fwdpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..fwddr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...fwdpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...fwdpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...fwddr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....fwdpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....fwdpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....fwddr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....fwdpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....fwdpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....fwddr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.idxpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.idxpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.idxdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..idxpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..idxpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..idxdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...idxpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...idxpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...idxdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....idxpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....idxpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....idxdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....idxpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....idxpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....idxdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.infpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.infpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.infdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..infpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..infpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..infdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...infpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...infpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...infdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....infpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....infpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....infdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....infpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....infpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....infdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.mdwpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.mdwpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.mdwdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..mdwpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..mdwpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..mdwdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...mdwpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...mdwpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...mdwdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....mdwpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....mdwpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....mdwdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....mdwpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....mdwpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....mdwdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.mgrpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.mgrpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.mgrdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..mgrpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..mgrpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..mgrdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...mgrpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...mgrpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...mgrdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....mgrpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....mgrpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....mgrdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....mgrpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....mgrpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....mgrdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.mgtpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.mgtpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.mgtdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..mgtpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..mgtpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..mgtdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...mgtpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...mgtpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...mgtdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....mgtpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....mgtpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....mgtdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....mgtpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....mgtpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....mgtdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.mqmpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.mqmpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.mqmdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..mqmpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..mqmpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..mqmdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...mqmpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...mqmpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...mqmdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....mqmpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....mqmpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....mqmdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....mqmpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....mqmpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....mqmdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.mstpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.mstpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.mstdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..mstpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..mstpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..mstdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...mstpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...mstpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...mstdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....mstpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....mstpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....mstdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....mstpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....mstpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....mstdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.mtcpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.mtcpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.mtcdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..mtcpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..mtcpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..mtcdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...mtcpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...mtcpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...mtcdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....mtcpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....mtcpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....mtcdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....mtcpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....mtcpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....mtcdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.nimpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.nimpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.nimdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..nimpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..nimpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..nimdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...nimpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...nimpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...nimdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....nimpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....nimpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....nimdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....nimpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....nimpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....nimdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.nqlpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.nqlpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.nqldr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..nqlpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..nqlpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..nqldr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...nqlpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...nqlpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...nqldr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....nqlpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....nqlpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....nqldr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....nqlpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....nqlpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....nqldr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.prtpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.prtpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.prtdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..prtpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..prtpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..prtdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...prtpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...prtpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...prtdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....prtpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....prtpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....prtdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....prtpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....prtpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....prtdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.rdbpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.rdbpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.rdbdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..rdbpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..rdbpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..rdbdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...rdbpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...rdbpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...rdbdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....rdbpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....rdbpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....rdbdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....rdbpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....rdbpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....rdbdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.srcpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.srcpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.srcdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..srcpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..srcpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..srcdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...srcpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...srcpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...srcdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....srcpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....srcpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....srcdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....srcpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....srcpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....srcdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.stgpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.stgpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.stgdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..stgpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..stgpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..stgdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...stgpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...stgpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...stgdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....stgpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....stgpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....stgdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....stgpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....stgpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....stgdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.viopr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.viopp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.viodr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..viopr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..viopp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..viodr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...viopr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...viopp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...viodr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....viopr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....viopp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....viodr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....viopr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....viopp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....viodr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.webpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.webpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.webdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..webpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..webpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..webdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...webpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...webpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...webdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....webpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....webpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....webdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....webpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....webpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....webdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.wrkpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.wrkpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.wrkdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..wrkpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..wrkpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..wrkdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...wrkpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...wrkpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...wrkdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....wrkpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....wrkpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....wrkdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....wrkpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....wrkpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....wrkdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.adcpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.adcpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.adcdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..adcpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..adcpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..adcdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...adcpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...adcpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...adcdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....adcpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....adcpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....adcdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....adcpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....adcpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....adcdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.agtpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.agtpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.agtdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..agtpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..agtpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..agtdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...agtpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...agtpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...agtdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....agtpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....agtpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....agtdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....agtpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....agtpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....agtdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.apppr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.apppp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.appdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..apppr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..apppp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..appdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...apppr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...apppp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...appdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....apppr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....apppp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....appdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....apppr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....apppp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....appdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.batpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.batpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.batdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..batpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..batpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..batdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...batpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...batpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...batdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....batpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....batpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....batdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....batpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....batpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....batdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.bldpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.bldpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.blddr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..bldpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..bldpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..blddr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...bldpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...bldpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...blddr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....bldpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....bldpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....blddr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....bldpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....bldpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....blddr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.catpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.catpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.catdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..catpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..catpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..catdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...catpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...catpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...catdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....catpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....catpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....catdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....catpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....catpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....catdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.cmppr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.cmppp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.cmpdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..cmppr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..cmppp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..cmpdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...cmppr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...cmppp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...cmpdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....cmppr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....cmppp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....cmpdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....cmppr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....cmppp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....cmpdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.conpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.conpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.condr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..conpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..conpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..condr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...conpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...conpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...condr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....conpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....conpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....condr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....conpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....conpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....condr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.cthpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.cthpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.cthdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..cthpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..cthpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..cthdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...cthpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...cthpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...cthdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....cthpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....cthpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....cthdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....cthpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....cthpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....cthdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.filpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.filpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.fildr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..filpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..filpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..fildr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...filpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...filpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...fildr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....filpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....filpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....fildr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....filpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....filpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....fildr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.fwdpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.fwdpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.fwddr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..fwdpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..fwdpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..fwddr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...fwdpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...fwdpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...fwddr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....fwdpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....fwdpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....fwddr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....fwdpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....fwdpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....fwddr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.idxpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.idxpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.idxdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..idxpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..idxpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..idxdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...idxpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...idxpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...idxdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....idxpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....idxpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....idxdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....idxpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....idxpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....idxdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.infpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.infpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.infdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..infpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..infpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..infdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...infpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...infpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...infdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....infpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....infpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....infdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....infpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....infpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....infdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.mdwpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.mdwpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.mdwdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..mdwpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..mdwpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..mdwdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...mdwpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...mdwpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...mdwdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....mdwpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....mdwpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....mdwdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....mdwpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....mdwpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....mdwdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.mgrpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.mgrpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.mgrdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..mgrpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..mgrpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..mgrdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...mgrpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...mgrpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...mgrdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....mgrpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....mgrpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....mgrdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....mgrpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....mgrpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....mgrdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.mgtpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.mgtpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.mgtdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..mgtpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..mgtpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..mgtdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...mgtpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...mgtpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...mgtdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....mgtpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....mgtpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....mgtdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....mgtpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....mgtpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....mgtdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.mqmpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.mqmpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.mqmdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..mqmpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..mqmpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..mqmdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...mqmpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...mqmpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...mqmdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....mqmpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....mqmpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....mqmdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....mqmpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....mqmpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....mqmdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.mstpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.mstpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.mstdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..mstpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..mstpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..mstdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...mstpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...mstpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...mstdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....mstpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....mstpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....mstdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....mstpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....mstpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....mstdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.mtcpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.mtcpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.mtcdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..mtcpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..mtcpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..mtcdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...mtcpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...mtcpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...mtcdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....mtcpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....mtcpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....mtcdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....mtcpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....mtcpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....mtcdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.nimpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.nimpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.nimdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..nimpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..nimpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..nimdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...nimpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...nimpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...nimdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....nimpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....nimpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....nimdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....nimpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....nimpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....nimdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.nqlpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.nqlpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.nqldr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..nqlpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..nqlpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..nqldr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...nqlpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...nqlpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...nqldr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....nqlpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....nqlpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....nqldr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....nqlpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....nqlpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....nqldr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.prtpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.prtpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.prtdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..prtpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..prtpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..prtdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...prtpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...prtpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...prtdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....prtpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....prtpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....prtdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....prtpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....prtpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....prtdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.rdbpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.rdbpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.rdbdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..rdbpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..rdbpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..rdbdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...rdbpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...rdbpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...rdbdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....rdbpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....rdbpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....rdbdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....rdbpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....rdbpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....rdbdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.srcpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.srcpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.srcdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..srcpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..srcpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..srcdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...srcpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...srcpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...srcdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....srcpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....srcpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....srcdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....srcpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....srcpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....srcdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.stgpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.stgpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.stgdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..stgpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..stgpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..stgdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...stgpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...stgpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...stgdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....stgpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....stgpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....stgdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....stgpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....stgpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....stgdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.viopr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.viopp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.viodr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..viopr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..viopp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..viodr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...viopr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...viopp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...viodr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....viopr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....viopp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....viodr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....viopr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....viopp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....viodr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.webpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.webpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.webdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..webpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..webpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..webdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...webpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...webpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...webdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....webpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....webpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....webdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....webpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....webpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....webdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.wrkpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.wrkpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.wrkdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..wrkpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..wrkpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..wrkdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...wrkpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...wrkpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...wrkdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....wrkpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....wrkpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....wrkdr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....wrkpr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....wrkpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....wrkdr###"
        },
        {
          "field" : "type",
          "equals" : "Microsoft.Compute/virtualMachines"
        },
        {
          "value" : "[resourceGroup().name]",
          "notLike" : "databricks-rg*"
        }
      ]
    },
    "then" : {
      "effect" : "[parameters('effectAction')]"
    }
    }
  )

}

resource "azurerm_policy_definition" "vm-naming-convention-np" {
  name                = "vm-naming-convention-np"
  policy_type         = "Custom"
  mode                = "Indexed"
  display_name        = "${var.custom_prefix} Enforces the virtual machine naming convention (nonprod)"
  description         = "Enforces the naming convention for virtual machines."
  management_group_id = var.mgmt-grp-def

  metadata = jsonencode({
    "Category" : "Compute"
  })

  parameters = jsonencode({
    "effectAction" : {
      "type" : "String",
      "metadata" : {
        "displayName" : "Effect Action"
        "description" : "What action the policy takes (Audit or Deny)"
      },
      "defaultValue" : "Audit"
    }
  })

  policy_rule = jsonencode({
    "if" : {
      "allOf" : [
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.adccq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.adcdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.adcdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.adcpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.adcqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.adctr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.adcts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.adctu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.adcsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..adccq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..adcdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..adcdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..adcpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..adcqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..adctr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..adcts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..adctu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..adcsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...adccq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...adcdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...adcdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...adcpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...adcqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...adctr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...adcts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...adctu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...adcsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....adccq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....adcdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....adcdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....adcpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....adcqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....adctr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....adcts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....adctu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....adcsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....adccq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....adcdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....adcdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....adcpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....adcqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....adctr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....adcts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....adctu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....adcsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.agtcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.agtdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.agtdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.agtpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.agtqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.agttr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.agtts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.agttu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.agtsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..agtcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..agtdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..agtdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..agtpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..agtqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..agttr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..agtts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..agttu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..agtsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...agtcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...agtdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...agtdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...agtpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...agtqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...agttr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...agtts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...agttu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...agtsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....agtcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....agtdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....agtdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....agtpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....agtqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....agttr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....agtts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....agttu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....agtsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....agtcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....agtdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....agtdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....agtpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....agtqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....agttr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....agtts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....agttu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....agtsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.appcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.appdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.appdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.apppp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.appqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.apptr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.appts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.apptu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.appsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..appcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..appdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..appdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..apppp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..appqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..apptr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..appts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..apptu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..appsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...appcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...appdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...appdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...apppp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...appqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...apptr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...appts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...apptu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...appsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....appcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....appdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....appdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....apppp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....appqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....apptr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....appts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....apptu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....appsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....appcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....appdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....appdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....apppp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....appqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....apptr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....appts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....apptu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....appsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.batcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.batdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.batdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.batpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.batqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.battr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.batts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.battu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.batsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..batcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..batdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..batdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..batpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..batqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..battr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..batts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..battu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..batsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...batcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...batdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...batdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...batpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...batqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...battr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...batts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...battu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...batsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....batcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....batdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....batdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....batpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....batqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....battr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....batts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....battu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....batsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....batcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....batdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....batdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....batpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....batqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....battr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....batts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....battu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....batsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.bldcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.blddm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.blddv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.bldpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.bldqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.bldtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.bldts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.bldtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.bldsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..bldcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..blddm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..blddv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..bldpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..bldqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..bldtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..bldts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..bldtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..bldsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...bldcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...blddm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...blddv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...bldpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...bldqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...bldtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...bldts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...bldtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...bldsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....bldcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....blddm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....blddv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....bldpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....bldqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....bldtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....bldts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....bldtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....bldsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....bldcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....blddm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....blddv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....bldpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....bldqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....bldtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....bldts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....bldtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....bldsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.catcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.catdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.catdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.catpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.catqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.cattr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.catts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.cattu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.catsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..catcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..catdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..catdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..catpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..catqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..cattr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..catts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..cattu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..catsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...catcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...catdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...catdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...catpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...catqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...cattr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...catts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...cattu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...catsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....catcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....catdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....catdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....catpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....catqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....cattr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....catts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....cattu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....catsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....catcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....catdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....catdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....catpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....catqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....cattr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....catts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....cattu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....catsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.cmpcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.cmpdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.cmpdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.cmppp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.cmpqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.cmptr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.cmpts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.cmptu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.cmpsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..cmpcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..cmpdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..cmpdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..cmppp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..cmpqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..cmptr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..cmpts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..cmptu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..cmpsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...cmpcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...cmpdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...cmpdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...cmppp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...cmpqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...cmptr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...cmpts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...cmptu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...cmpsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....cmpcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....cmpdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....cmpdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....cmppp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....cmpqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....cmptr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....cmpts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....cmptu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....cmpsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....cmpcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....cmpdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....cmpdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....cmppp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....cmpqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....cmptr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....cmpts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....cmptu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....cmpsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.concq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.condm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.condv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.conpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.conqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.contr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.conts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.contu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.consb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..concq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..condm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..condv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..conpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..conqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..contr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..conts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..contu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..consb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...concq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...condm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...condv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...conpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...conqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...contr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...conts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...contu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...consb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....concq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....condm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....condv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....conpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....conqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....contr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....conts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....contu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....consb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....concq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....condm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....condv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....conpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....conqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....contr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....conts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....contu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....consb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.cthcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.cthdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.cthdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.cthpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.cthqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.cthtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.cthts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.cthtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.cthsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..cthcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..cthdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..cthdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..cthpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..cthqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..cthtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..cthts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..cthtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..cthsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...cthcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...cthdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...cthdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...cthpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...cthqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...cthtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...cthts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...cthtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...cthsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....cthcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....cthdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....cthdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....cthpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....cthqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....cthtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....cthts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....cthtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....cthsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....cthcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....cthdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....cthdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....cthpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....cthqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....cthtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....cthts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....cthtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....cthsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.filcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.fildm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.fildv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.filpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.filqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.filtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.filts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.filtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.filsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..filcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..fildm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..fildv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..filpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..filqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..filtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..filts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..filtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..filsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...filcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...fildm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...fildv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...filpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...filqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...filtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...filts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...filtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...filsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....filcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....fildm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....fildv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....filpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....filqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....filtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....filts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....filtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....filsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....filcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....fildm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....fildv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....filpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....filqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....filtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....filts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....filtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....filsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.fwdcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.fwddm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.fwddv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.fwdpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.fwdqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.fwdtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.fwdts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.fwdtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.fwdsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..fwdcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..fwddm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..fwddv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..fwdpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..fwdqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..fwdtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..fwdts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..fwdtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..fwdsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...fwdcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...fwddm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...fwddv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...fwdpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...fwdqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...fwdtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...fwdts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...fwdtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...fwdsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....fwdcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....fwddm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....fwddv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....fwdpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....fwdqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....fwdtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....fwdts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....fwdtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....fwdsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....fwdcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....fwddm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....fwddv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....fwdpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....fwdqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....fwdtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....fwdts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....fwdtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....fwdsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.idxcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.idxdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.idxdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.idxpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.idxqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.idxtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.idxts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.idxtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.idxsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..idxcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..idxdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..idxdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..idxpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..idxqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..idxtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..idxts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..idxtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..idxsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...idxcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...idxdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...idxdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...idxpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...idxqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...idxtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...idxts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...idxtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...idxsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....idxcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....idxdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....idxdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....idxpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....idxqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....idxtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....idxts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....idxtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....idxsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....idxcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....idxdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....idxdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....idxpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....idxqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....idxtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....idxts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....idxtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....idxsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.infcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.infdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.infdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.infpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.infqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.inftr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.infts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.inftu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.infsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..infcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..infdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..infdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..infpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..infqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..inftr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..infts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..inftu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..infsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...infcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...infdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...infdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...infpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...infqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...inftr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...infts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...inftu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...infsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....infcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....infdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....infdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....infpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....infqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....inftr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....infts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....inftu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....infsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....infcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....infdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....infdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....infpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....infqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....inftr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....infts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....inftu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....infsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.mdwcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.mdwdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.mdwdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.mdwpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.mdwqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.mdwtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.mdwts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.mdwtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.mdwsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..mdwcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..mdwdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..mdwdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..mdwpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..mdwqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..mdwtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..mdwts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..mdwtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..mdwsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...mdwcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...mdwdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...mdwdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...mdwpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...mdwqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...mdwtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...mdwts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...mdwtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...mdwsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....mdwcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....mdwdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....mdwdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....mdwpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....mdwqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....mdwtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....mdwts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....mdwtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....mdwsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....mdwcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....mdwdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....mdwdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....mdwpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....mdwqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....mdwtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....mdwts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....mdwtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....mdwsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.mgrcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.mgrdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.mgrdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.mgrpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.mgrqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.mgrtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.mgrts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.mgrtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.mgrsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..mgrcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..mgrdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..mgrdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..mgrpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..mgrqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..mgrtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..mgrts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..mgrtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..mgrsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...mgrcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...mgrdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...mgrdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...mgrpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...mgrqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...mgrtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...mgrts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...mgrtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...mgrsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....mgrcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....mgrdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....mgrdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....mgrpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....mgrqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....mgrtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....mgrts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....mgrtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....mgrsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....mgrcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....mgrdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....mgrdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....mgrpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....mgrqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....mgrtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....mgrts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....mgrtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....mgrsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.mgtcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.mgtdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.mgtdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.mgtpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.mgtqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.mgttr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.mgtts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.mgttu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.mgtsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..mgtcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..mgtdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..mgtdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..mgtpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..mgtqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..mgttr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..mgtts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..mgttu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..mgtsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...mgtcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...mgtdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...mgtdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...mgtpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...mgtqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...mgttr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...mgtts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...mgttu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...mgtsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....mgtcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....mgtdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....mgtdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....mgtpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....mgtqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....mgttr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....mgtts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....mgttu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....mgtsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....mgtcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....mgtdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....mgtdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....mgtpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....mgtqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....mgttr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....mgtts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....mgttu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....mgtsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.mqmcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.mqmdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.mqmdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.mqmpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.mqmqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.mqmtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.mqmts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.mqmtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.mqmsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..mqmcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..mqmdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..mqmdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..mqmpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..mqmqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..mqmtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..mqmts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..mqmtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..mqmsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...mqmcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...mqmdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...mqmdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...mqmpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...mqmqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...mqmtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...mqmts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...mqmtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...mqmsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....mqmcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....mqmdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....mqmdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....mqmpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....mqmqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....mqmtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....mqmts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....mqmtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....mqmsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....mqmcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....mqmdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....mqmdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....mqmpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....mqmqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....mqmtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....mqmts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....mqmtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....mqmsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.mstcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.mstdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.mstdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.mstpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.mstqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.msttr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.mstts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.msttu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.mstsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..mstcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..mstdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..mstdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..mstpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..mstqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..msttr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..mstts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..msttu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..mstsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...mstcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...mstdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...mstdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...mstpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...mstqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...msttr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...mstts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...msttu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...mstsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....mstcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....mstdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....mstdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....mstpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....mstqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....msttr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....mstts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....msttu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....mstsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....mstcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....mstdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....mstdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....mstpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....mstqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....msttr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....mstts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....msttu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....mstsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.mtccq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.mtcdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.mtcdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.mtcpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.mtcqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.mtctr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.mtcts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.mtctu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.mtcsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..mtccq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..mtcdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..mtcdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..mtcpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..mtcqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..mtctr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..mtcts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..mtctu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..mtcsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...mtccq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...mtcdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...mtcdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...mtcpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...mtcqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...mtctr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...mtcts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...mtctu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...mtcsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....mtccq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....mtcdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....mtcdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....mtcpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....mtcqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....mtctr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....mtcts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....mtctu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....mtcsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....mtccq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....mtcdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....mtcdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....mtcpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....mtcqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....mtctr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....mtcts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....mtctu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....mtcsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.nimcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.nimdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.nimdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.nimpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.nimqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.nimtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.nimts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.nimtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.nimsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..nimcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..nimdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..nimdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..nimpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..nimqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..nimtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..nimts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..nimtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..nimsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...nimcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...nimdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...nimdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...nimpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...nimqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...nimtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...nimts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...nimtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...nimsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....nimcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....nimdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....nimdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....nimpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....nimqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....nimtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....nimts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....nimtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....nimsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....nimcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....nimdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....nimdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....nimpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....nimqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....nimtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....nimts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....nimtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....nimsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.nqlcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.nqldm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.nqldv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.nqlpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.nqlqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.nqltr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.nqlts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.nqltu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.nqlsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..nqlcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..nqldm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..nqldv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..nqlpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..nqlqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..nqltr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..nqlts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..nqltu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..nqlsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...nqlcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...nqldm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...nqldv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...nqlpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...nqlqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...nqltr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...nqlts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...nqltu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...nqlsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....nqlcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....nqldm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....nqldv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....nqlpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....nqlqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....nqltr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....nqlts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....nqltu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....nqlsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....nqlcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....nqldm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....nqldv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....nqlpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....nqlqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....nqltr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....nqlts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....nqltu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....nqlsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.prtcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.prtdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.prtdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.prtpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.prtqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.prttr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.prtts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.prttu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.prtsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..prtcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..prtdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..prtdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..prtpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..prtqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..prttr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..prtts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..prttu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..prtsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...prtcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...prtdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...prtdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...prtpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...prtqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...prttr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...prtts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...prttu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...prtsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....prtcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....prtdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....prtdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....prtpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....prtqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....prttr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....prtts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....prttu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....prtsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....prtcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....prtdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....prtdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....prtpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....prtqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....prttr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....prtts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....prttu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....prtsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.rdbcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.rdbdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.rdbdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.rdbpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.rdbqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.rdbtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.rdbts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.rdbtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.rdbsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..rdbcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..rdbdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..rdbdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..rdbpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..rdbqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..rdbtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..rdbts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..rdbtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..rdbsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...rdbcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...rdbdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...rdbdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...rdbpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...rdbqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...rdbtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...rdbts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...rdbtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...rdbsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....rdbcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....rdbdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....rdbdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....rdbpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....rdbqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....rdbtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....rdbts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....rdbtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....rdbsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....rdbcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....rdbdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....rdbdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....rdbpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....rdbqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....rdbtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....rdbts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....rdbtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....rdbsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.srccq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.srcdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.srcdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.srcpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.srcqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.srctr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.srcts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.srctu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.srcsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..srccq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..srcdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..srcdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..srcpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..srcqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..srctr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..srcts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..srctu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..srcsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...srccq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...srcdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...srcdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...srcpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...srcqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...srctr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...srcts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...srctu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...srcsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....srccq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....srcdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....srcdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....srcpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....srcqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....srctr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....srcts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....srctu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....srcsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....srccq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....srcdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....srcdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....srcpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....srcqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....srctr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....srcts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....srctu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....srcsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.stgcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.stgdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.stgdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.stgpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.stgqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.stgtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.stgts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.stgtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.stgsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..stgcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..stgdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..stgdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..stgpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..stgqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..stgtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..stgts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..stgtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..stgsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...stgcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...stgdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...stgdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...stgpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...stgqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...stgtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...stgts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...stgtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...stgsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....stgcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....stgdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....stgdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....stgpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....stgqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....stgtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....stgts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....stgtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....stgsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....stgcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....stgdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....stgdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....stgpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....stgqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....stgtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....stgts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....stgtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....stgsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.viocq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.viodm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.viodv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.viopp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.vioqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.viotr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.viots###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.viotu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.viosb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..viocq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..viodm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..viodv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..viopp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..vioqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..viotr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..viots###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..viotu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..viosb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...viocq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...viodm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...viodv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...viopp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...vioqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...viotr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...viots###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...viotu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...viosb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....viocq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....viodm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....viodv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....viopp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....vioqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....viotr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....viots###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....viotu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....viosb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....viocq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....viodm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....viodv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....viopp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....vioqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....viotr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....viots###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....viotu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....viosb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.webcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.webdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.webdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.webpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.webqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.webtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.webts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.webtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.websb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..webcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..webdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..webdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..webpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..webqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..webtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..webts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..webtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..websb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...webcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...webdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...webdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...webpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...webqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...webtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...webts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...webtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...websb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....webcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....webdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....webdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....webpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....webqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....webtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....webts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....webtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....websb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....webcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....webdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....webdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....webpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....webqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....webtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....webts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....webtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....websb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.wrkcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.wrkdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.wrkdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.wrkpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.wrkqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.wrktr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.wrkts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.wrktu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.wrksb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..wrkcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..wrkdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..wrkdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..wrkpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..wrkqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..wrktr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..wrkts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..wrktu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa..wrksb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...wrkcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...wrkdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...wrkdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...wrkpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...wrkqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...wrktr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...wrkts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...wrktu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa...wrksb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....wrkcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....wrkdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....wrkdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....wrkpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....wrkqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....wrktr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....wrkts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....wrktu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa....wrksb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....wrkcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....wrkdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....wrkdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....wrkpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....wrkqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....wrktr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....wrkts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....wrktu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sa.....wrksb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.adccq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.adcdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.adcdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.adcpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.adcqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.adctr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.adcts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.adctu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.adcsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..adccq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..adcdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..adcdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..adcpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..adcqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..adctr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..adcts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..adctu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..adcsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...adccq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...adcdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...adcdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...adcpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...adcqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...adctr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...adcts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...adctu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...adcsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....adccq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....adcdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....adcdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....adcpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....adcqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....adctr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....adcts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....adctu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....adcsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....adccq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....adcdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....adcdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....adcpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....adcqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....adctr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....adcts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....adctu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....adcsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.agtcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.agtdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.agtdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.agtpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.agtqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.agttr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.agtts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.agttu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.agtsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..agtcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..agtdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..agtdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..agtpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..agtqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..agttr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..agtts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..agttu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..agtsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...agtcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...agtdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...agtdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...agtpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...agtqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...agttr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...agtts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...agttu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...agtsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....agtcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....agtdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....agtdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....agtpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....agtqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....agttr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....agtts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....agttu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....agtsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....agtcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....agtdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....agtdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....agtpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....agtqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....agttr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....agtts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....agttu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....agtsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.appcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.appdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.appdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.apppp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.appqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.apptr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.appts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.apptu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.appsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..appcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..appdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..appdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..apppp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..appqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..apptr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..appts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..apptu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..appsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...appcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...appdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...appdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...apppp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...appqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...apptr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...appts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...apptu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...appsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....appcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....appdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....appdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....apppp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....appqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....apptr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....appts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....apptu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....appsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....appcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....appdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....appdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....apppp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....appqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....apptr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....appts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....apptu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....appsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.batcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.batdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.batdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.batpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.batqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.battr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.batts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.battu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.batsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..batcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..batdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..batdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..batpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..batqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..battr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..batts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..battu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..batsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...batcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...batdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...batdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...batpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...batqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...battr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...batts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...battu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...batsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....batcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....batdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....batdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....batpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....batqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....battr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....batts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....battu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....batsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....batcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....batdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....batdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....batpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....batqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....battr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....batts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....battu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....batsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.bldcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.blddm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.blddv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.bldpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.bldqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.bldtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.bldts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.bldtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.bldsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..bldcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..blddm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..blddv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..bldpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..bldqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..bldtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..bldts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..bldtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..bldsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...bldcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...blddm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...blddv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...bldpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...bldqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...bldtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...bldts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...bldtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...bldsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....bldcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....blddm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....blddv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....bldpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....bldqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....bldtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....bldts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....bldtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....bldsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....bldcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....blddm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....blddv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....bldpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....bldqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....bldtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....bldts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....bldtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....bldsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.catcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.catdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.catdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.catpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.catqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.cattr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.catts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.cattu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.catsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..catcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..catdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..catdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..catpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..catqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..cattr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..catts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..cattu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..catsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...catcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...catdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...catdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...catpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...catqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...cattr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...catts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...cattu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...catsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....catcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....catdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....catdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....catpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....catqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....cattr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....catts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....cattu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....catsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....catcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....catdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....catdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....catpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....catqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....cattr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....catts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....cattu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....catsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.cmpcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.cmpdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.cmpdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.cmppp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.cmpqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.cmptr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.cmpts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.cmptu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.cmpsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..cmpcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..cmpdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..cmpdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..cmppp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..cmpqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..cmptr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..cmpts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..cmptu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..cmpsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...cmpcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...cmpdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...cmpdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...cmppp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...cmpqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...cmptr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...cmpts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...cmptu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...cmpsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....cmpcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....cmpdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....cmpdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....cmppp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....cmpqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....cmptr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....cmpts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....cmptu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....cmpsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....cmpcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....cmpdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....cmpdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....cmppp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....cmpqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....cmptr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....cmpts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....cmptu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....cmpsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.concq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.condm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.condv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.conpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.conqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.contr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.conts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.contu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.consb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..concq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..condm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..condv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..conpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..conqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..contr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..conts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..contu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..consb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...concq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...condm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...condv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...conpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...conqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...contr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...conts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...contu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...consb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....concq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....condm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....condv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....conpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....conqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....contr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....conts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....contu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....consb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....concq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....condm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....condv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....conpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....conqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....contr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....conts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....contu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....consb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.cthcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.cthdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.cthdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.cthpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.cthqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.cthtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.cthts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.cthtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.cthsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..cthcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..cthdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..cthdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..cthpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..cthqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..cthtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..cthts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..cthtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..cthsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...cthcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...cthdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...cthdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...cthpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...cthqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...cthtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...cthts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...cthtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...cthsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....cthcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....cthdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....cthdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....cthpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....cthqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....cthtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....cthts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....cthtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....cthsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....cthcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....cthdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....cthdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....cthpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....cthqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....cthtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....cthts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....cthtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....cthsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.filcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.fildm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.fildv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.filpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.filqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.filtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.filts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.filtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.filsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..filcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..fildm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..fildv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..filpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..filqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..filtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..filts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..filtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..filsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...filcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...fildm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...fildv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...filpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...filqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...filtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...filts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...filtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...filsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....filcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....fildm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....fildv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....filpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....filqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....filtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....filts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....filtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....filsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....filcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....fildm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....fildv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....filpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....filqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....filtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....filts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....filtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....filsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.fwdcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.fwddm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.fwddv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.fwdpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.fwdqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.fwdtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.fwdts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.fwdtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.fwdsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..fwdcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..fwddm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..fwddv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..fwdpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..fwdqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..fwdtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..fwdts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..fwdtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..fwdsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...fwdcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...fwddm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...fwddv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...fwdpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...fwdqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...fwdtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...fwdts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...fwdtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...fwdsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....fwdcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....fwddm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....fwddv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....fwdpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....fwdqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....fwdtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....fwdts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....fwdtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....fwdsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....fwdcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....fwddm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....fwddv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....fwdpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....fwdqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....fwdtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....fwdts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....fwdtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....fwdsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.idxcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.idxdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.idxdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.idxpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.idxqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.idxtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.idxts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.idxtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.idxsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..idxcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..idxdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..idxdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..idxpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..idxqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..idxtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..idxts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..idxtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..idxsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...idxcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...idxdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...idxdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...idxpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...idxqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...idxtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...idxts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...idxtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...idxsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....idxcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....idxdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....idxdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....idxpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....idxqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....idxtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....idxts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....idxtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....idxsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....idxcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....idxdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....idxdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....idxpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....idxqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....idxtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....idxts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....idxtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....idxsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.infcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.infdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.infdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.infpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.infqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.inftr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.infts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.inftu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.infsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..infcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..infdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..infdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..infpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..infqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..inftr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..infts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..inftu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..infsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...infcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...infdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...infdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...infpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...infqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...inftr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...infts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...inftu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...infsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....infcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....infdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....infdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....infpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....infqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....inftr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....infts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....inftu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....infsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....infcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....infdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....infdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....infpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....infqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....inftr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....infts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....inftu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....infsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.mdwcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.mdwdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.mdwdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.mdwpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.mdwqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.mdwtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.mdwts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.mdwtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.mdwsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..mdwcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..mdwdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..mdwdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..mdwpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..mdwqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..mdwtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..mdwts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..mdwtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..mdwsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...mdwcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...mdwdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...mdwdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...mdwpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...mdwqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...mdwtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...mdwts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...mdwtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...mdwsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....mdwcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....mdwdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....mdwdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....mdwpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....mdwqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....mdwtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....mdwts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....mdwtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....mdwsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....mdwcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....mdwdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....mdwdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....mdwpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....mdwqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....mdwtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....mdwts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....mdwtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....mdwsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.mgrcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.mgrdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.mgrdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.mgrpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.mgrqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.mgrtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.mgrts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.mgrtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.mgrsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..mgrcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..mgrdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..mgrdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..mgrpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..mgrqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..mgrtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..mgrts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..mgrtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..mgrsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...mgrcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...mgrdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...mgrdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...mgrpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...mgrqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...mgrtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...mgrts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...mgrtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...mgrsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....mgrcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....mgrdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....mgrdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....mgrpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....mgrqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....mgrtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....mgrts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....mgrtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....mgrsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....mgrcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....mgrdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....mgrdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....mgrpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....mgrqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....mgrtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....mgrts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....mgrtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....mgrsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.mgtcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.mgtdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.mgtdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.mgtpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.mgtqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.mgttr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.mgtts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.mgttu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.mgtsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..mgtcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..mgtdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..mgtdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..mgtpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..mgtqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..mgttr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..mgtts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..mgttu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..mgtsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...mgtcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...mgtdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...mgtdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...mgtpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...mgtqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...mgttr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...mgtts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...mgttu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...mgtsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....mgtcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....mgtdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....mgtdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....mgtpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....mgtqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....mgttr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....mgtts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....mgttu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....mgtsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....mgtcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....mgtdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....mgtdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....mgtpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....mgtqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....mgttr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....mgtts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....mgttu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....mgtsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.mqmcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.mqmdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.mqmdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.mqmpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.mqmqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.mqmtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.mqmts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.mqmtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.mqmsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..mqmcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..mqmdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..mqmdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..mqmpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..mqmqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..mqmtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..mqmts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..mqmtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..mqmsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...mqmcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...mqmdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...mqmdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...mqmpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...mqmqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...mqmtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...mqmts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...mqmtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...mqmsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....mqmcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....mqmdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....mqmdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....mqmpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....mqmqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....mqmtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....mqmts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....mqmtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....mqmsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....mqmcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....mqmdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....mqmdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....mqmpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....mqmqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....mqmtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....mqmts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....mqmtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....mqmsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.mstcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.mstdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.mstdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.mstpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.mstqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.msttr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.mstts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.msttu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.mstsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..mstcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..mstdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..mstdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..mstpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..mstqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..msttr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..mstts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..msttu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..mstsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...mstcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...mstdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...mstdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...mstpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...mstqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...msttr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...mstts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...msttu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...mstsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....mstcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....mstdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....mstdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....mstpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....mstqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....msttr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....mstts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....msttu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....mstsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....mstcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....mstdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....mstdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....mstpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....mstqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....msttr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....mstts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....msttu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....mstsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.mtccq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.mtcdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.mtcdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.mtcpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.mtcqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.mtctr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.mtcts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.mtctu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.mtcsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..mtccq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..mtcdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..mtcdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..mtcpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..mtcqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..mtctr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..mtcts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..mtctu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..mtcsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...mtccq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...mtcdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...mtcdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...mtcpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...mtcqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...mtctr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...mtcts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...mtctu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...mtcsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....mtccq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....mtcdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....mtcdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....mtcpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....mtcqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....mtctr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....mtcts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....mtctu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....mtcsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....mtccq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....mtcdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....mtcdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....mtcpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....mtcqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....mtctr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....mtcts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....mtctu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....mtcsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.nimcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.nimdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.nimdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.nimpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.nimqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.nimtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.nimts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.nimtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.nimsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..nimcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..nimdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..nimdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..nimpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..nimqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..nimtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..nimts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..nimtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..nimsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...nimcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...nimdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...nimdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...nimpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...nimqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...nimtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...nimts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...nimtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...nimsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....nimcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....nimdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....nimdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....nimpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....nimqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....nimtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....nimts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....nimtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....nimsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....nimcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....nimdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....nimdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....nimpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....nimqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....nimtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....nimts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....nimtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....nimsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.nqlcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.nqldm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.nqldv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.nqlpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.nqlqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.nqltr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.nqlts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.nqltu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.nqlsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..nqlcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..nqldm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..nqldv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..nqlpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..nqlqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..nqltr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..nqlts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..nqltu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..nqlsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...nqlcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...nqldm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...nqldv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...nqlpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...nqlqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...nqltr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...nqlts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...nqltu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...nqlsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....nqlcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....nqldm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....nqldv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....nqlpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....nqlqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....nqltr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....nqlts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....nqltu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....nqlsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....nqlcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....nqldm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....nqldv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....nqlpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....nqlqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....nqltr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....nqlts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....nqltu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....nqlsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.prtcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.prtdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.prtdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.prtpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.prtqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.prttr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.prtts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.prttu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.prtsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..prtcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..prtdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..prtdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..prtpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..prtqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..prttr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..prtts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..prttu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..prtsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...prtcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...prtdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...prtdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...prtpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...prtqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...prttr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...prtts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...prttu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...prtsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....prtcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....prtdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....prtdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....prtpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....prtqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....prttr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....prtts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....prttu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....prtsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....prtcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....prtdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....prtdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....prtpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....prtqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....prttr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....prtts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....prttu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....prtsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.rdbcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.rdbdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.rdbdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.rdbpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.rdbqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.rdbtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.rdbts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.rdbtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.rdbsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..rdbcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..rdbdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..rdbdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..rdbpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..rdbqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..rdbtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..rdbts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..rdbtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..rdbsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...rdbcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...rdbdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...rdbdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...rdbpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...rdbqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...rdbtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...rdbts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...rdbtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...rdbsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....rdbcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....rdbdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....rdbdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....rdbpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....rdbqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....rdbtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....rdbts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....rdbtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....rdbsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....rdbcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....rdbdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....rdbdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....rdbpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....rdbqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....rdbtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....rdbts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....rdbtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....rdbsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.srccq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.srcdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.srcdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.srcpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.srcqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.srctr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.srcts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.srctu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.srcsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..srccq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..srcdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..srcdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..srcpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..srcqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..srctr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..srcts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..srctu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..srcsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...srccq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...srcdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...srcdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...srcpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...srcqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...srctr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...srcts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...srctu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...srcsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....srccq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....srcdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....srcdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....srcpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....srcqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....srctr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....srcts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....srctu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....srcsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....srccq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....srcdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....srcdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....srcpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....srcqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....srctr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....srcts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....srctu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....srcsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.stgcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.stgdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.stgdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.stgpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.stgqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.stgtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.stgts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.stgtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.stgsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..stgcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..stgdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..stgdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..stgpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..stgqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..stgtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..stgts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..stgtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..stgsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...stgcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...stgdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...stgdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...stgpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...stgqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...stgtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...stgts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...stgtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...stgsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....stgcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....stgdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....stgdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....stgpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....stgqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....stgtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....stgts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....stgtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....stgsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....stgcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....stgdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....stgdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....stgpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....stgqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....stgtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....stgts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....stgtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....stgsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.viocq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.viodm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.viodv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.viopp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.vioqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.viotr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.viots###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.viotu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.viosb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..viocq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..viodm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..viodv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..viopp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..vioqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..viotr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..viots###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..viotu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..viosb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...viocq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...viodm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...viodv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...viopp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...vioqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...viotr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...viots###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...viotu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...viosb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....viocq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....viodm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....viodv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....viopp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....vioqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....viotr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....viots###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....viotu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....viosb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....viocq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....viodm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....viodv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....viopp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....vioqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....viotr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....viots###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....viotu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....viosb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.webcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.webdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.webdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.webpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.webqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.webtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.webts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.webtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.websb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..webcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..webdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..webdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..webpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..webqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..webtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..webts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..webtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..websb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...webcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...webdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...webdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...webpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...webqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...webtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...webts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...webtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...websb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....webcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....webdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....webdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....webpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....webqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....webtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....webts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....webtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....websb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....webcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....webdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....webdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....webpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....webqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....webtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....webts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....webtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....websb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.wrkcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.wrkdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.wrkdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.wrkpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.wrkqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.wrktr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.wrkts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.wrktu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.wrksb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..wrkcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..wrkdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..wrkdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..wrkpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..wrkqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..wrktr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..wrkts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..wrktu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su..wrksb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...wrkcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...wrkdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...wrkdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...wrkpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...wrkqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...wrktr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...wrkts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...wrktu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su...wrksb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....wrkcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....wrkdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....wrkdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....wrkpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....wrkqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....wrktr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....wrkts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....wrktu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su....wrksb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....wrkcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....wrkdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....wrkdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....wrkpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....wrkqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....wrktr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....wrkts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....wrktu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "su.....wrksb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.adccq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.adcdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.adcdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.adcpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.adcqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.adctr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.adcts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.adctu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.adcsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..adccq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..adcdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..adcdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..adcpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..adcqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..adctr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..adcts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..adctu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..adcsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...adccq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...adcdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...adcdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...adcpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...adcqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...adctr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...adcts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...adctu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...adcsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....adccq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....adcdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....adcdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....adcpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....adcqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....adctr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....adcts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....adctu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....adcsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....adccq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....adcdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....adcdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....adcpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....adcqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....adctr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....adcts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....adctu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....adcsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.agtcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.agtdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.agtdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.agtpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.agtqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.agttr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.agtts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.agttu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.agtsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..agtcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..agtdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..agtdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..agtpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..agtqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..agttr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..agtts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..agttu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..agtsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...agtcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...agtdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...agtdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...agtpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...agtqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...agttr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...agtts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...agttu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...agtsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....agtcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....agtdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....agtdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....agtpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....agtqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....agttr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....agtts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....agttu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....agtsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....agtcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....agtdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....agtdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....agtpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....agtqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....agttr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....agtts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....agttu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....agtsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.appcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.appdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.appdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.apppp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.appqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.apptr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.appts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.apptu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.appsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..appcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..appdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..appdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..apppp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..appqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..apptr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..appts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..apptu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..appsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...appcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...appdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...appdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...apppp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...appqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...apptr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...appts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...apptu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...appsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....appcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....appdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....appdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....apppp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....appqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....apptr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....appts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....apptu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....appsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....appcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....appdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....appdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....apppp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....appqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....apptr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....appts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....apptu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....appsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.batcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.batdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.batdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.batpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.batqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.battr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.batts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.battu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.batsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..batcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..batdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..batdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..batpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..batqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..battr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..batts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..battu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..batsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...batcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...batdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...batdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...batpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...batqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...battr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...batts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...battu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...batsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....batcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....batdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....batdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....batpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....batqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....battr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....batts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....battu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....batsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....batcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....batdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....batdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....batpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....batqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....battr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....batts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....battu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....batsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.bldcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.blddm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.blddv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.bldpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.bldqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.bldtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.bldts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.bldtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.bldsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..bldcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..blddm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..blddv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..bldpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..bldqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..bldtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..bldts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..bldtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..bldsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...bldcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...blddm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...blddv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...bldpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...bldqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...bldtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...bldts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...bldtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...bldsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....bldcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....blddm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....blddv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....bldpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....bldqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....bldtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....bldts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....bldtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....bldsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....bldcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....blddm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....blddv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....bldpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....bldqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....bldtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....bldts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....bldtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....bldsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.catcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.catdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.catdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.catpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.catqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.cattr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.catts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.cattu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.catsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..catcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..catdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..catdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..catpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..catqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..cattr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..catts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..cattu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..catsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...catcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...catdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...catdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...catpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...catqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...cattr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...catts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...cattu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...catsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....catcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....catdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....catdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....catpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....catqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....cattr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....catts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....cattu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....catsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....catcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....catdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....catdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....catpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....catqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....cattr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....catts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....cattu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....catsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.cmpcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.cmpdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.cmpdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.cmppp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.cmpqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.cmptr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.cmpts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.cmptu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.cmpsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..cmpcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..cmpdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..cmpdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..cmppp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..cmpqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..cmptr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..cmpts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..cmptu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..cmpsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...cmpcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...cmpdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...cmpdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...cmppp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...cmpqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...cmptr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...cmpts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...cmptu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...cmpsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....cmpcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....cmpdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....cmpdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....cmppp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....cmpqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....cmptr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....cmpts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....cmptu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....cmpsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....cmpcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....cmpdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....cmpdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....cmppp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....cmpqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....cmptr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....cmpts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....cmptu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....cmpsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.concq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.condm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.condv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.conpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.conqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.contr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.conts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.contu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.consb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..concq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..condm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..condv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..conpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..conqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..contr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..conts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..contu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..consb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...concq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...condm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...condv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...conpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...conqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...contr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...conts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...contu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...consb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....concq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....condm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....condv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....conpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....conqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....contr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....conts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....contu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....consb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....concq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....condm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....condv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....conpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....conqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....contr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....conts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....contu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....consb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.cthcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.cthdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.cthdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.cthpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.cthqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.cthtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.cthts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.cthtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.cthsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..cthcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..cthdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..cthdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..cthpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..cthqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..cthtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..cthts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..cthtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..cthsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...cthcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...cthdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...cthdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...cthpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...cthqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...cthtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...cthts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...cthtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...cthsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....cthcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....cthdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....cthdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....cthpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....cthqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....cthtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....cthts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....cthtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....cthsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....cthcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....cthdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....cthdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....cthpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....cthqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....cthtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....cthts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....cthtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....cthsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.filcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.fildm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.fildv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.filpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.filqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.filtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.filts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.filtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.filsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..filcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..fildm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..fildv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..filpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..filqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..filtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..filts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..filtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..filsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...filcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...fildm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...fildv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...filpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...filqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...filtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...filts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...filtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...filsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....filcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....fildm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....fildv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....filpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....filqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....filtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....filts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....filtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....filsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....filcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....fildm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....fildv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....filpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....filqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....filtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....filts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....filtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....filsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.fwdcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.fwddm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.fwddv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.fwdpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.fwdqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.fwdtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.fwdts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.fwdtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.fwdsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..fwdcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..fwddm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..fwddv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..fwdpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..fwdqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..fwdtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..fwdts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..fwdtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..fwdsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...fwdcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...fwddm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...fwddv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...fwdpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...fwdqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...fwdtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...fwdts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...fwdtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...fwdsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....fwdcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....fwddm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....fwddv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....fwdpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....fwdqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....fwdtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....fwdts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....fwdtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....fwdsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....fwdcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....fwddm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....fwddv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....fwdpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....fwdqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....fwdtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....fwdts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....fwdtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....fwdsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.idxcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.idxdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.idxdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.idxpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.idxqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.idxtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.idxts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.idxtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.idxsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..idxcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..idxdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..idxdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..idxpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..idxqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..idxtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..idxts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..idxtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..idxsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...idxcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...idxdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...idxdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...idxpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...idxqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...idxtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...idxts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...idxtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...idxsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....idxcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....idxdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....idxdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....idxpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....idxqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....idxtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....idxts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....idxtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....idxsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....idxcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....idxdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....idxdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....idxpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....idxqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....idxtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....idxts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....idxtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....idxsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.infcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.infdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.infdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.infpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.infqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.inftr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.infts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.inftu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.infsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..infcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..infdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..infdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..infpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..infqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..inftr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..infts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..inftu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..infsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...infcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...infdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...infdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...infpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...infqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...inftr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...infts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...inftu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...infsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....infcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....infdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....infdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....infpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....infqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....inftr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....infts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....inftu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....infsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....infcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....infdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....infdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....infpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....infqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....inftr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....infts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....inftu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....infsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.mdwcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.mdwdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.mdwdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.mdwpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.mdwqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.mdwtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.mdwts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.mdwtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.mdwsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..mdwcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..mdwdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..mdwdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..mdwpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..mdwqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..mdwtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..mdwts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..mdwtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..mdwsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...mdwcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...mdwdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...mdwdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...mdwpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...mdwqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...mdwtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...mdwts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...mdwtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...mdwsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....mdwcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....mdwdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....mdwdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....mdwpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....mdwqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....mdwtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....mdwts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....mdwtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....mdwsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....mdwcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....mdwdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....mdwdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....mdwpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....mdwqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....mdwtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....mdwts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....mdwtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....mdwsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.mgrcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.mgrdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.mgrdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.mgrpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.mgrqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.mgrtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.mgrts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.mgrtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.mgrsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..mgrcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..mgrdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..mgrdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..mgrpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..mgrqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..mgrtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..mgrts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..mgrtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..mgrsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...mgrcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...mgrdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...mgrdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...mgrpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...mgrqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...mgrtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...mgrts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...mgrtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...mgrsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....mgrcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....mgrdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....mgrdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....mgrpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....mgrqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....mgrtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....mgrts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....mgrtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....mgrsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....mgrcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....mgrdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....mgrdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....mgrpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....mgrqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....mgrtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....mgrts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....mgrtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....mgrsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.mgtcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.mgtdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.mgtdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.mgtpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.mgtqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.mgttr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.mgtts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.mgttu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.mgtsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..mgtcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..mgtdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..mgtdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..mgtpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..mgtqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..mgttr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..mgtts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..mgttu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..mgtsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...mgtcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...mgtdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...mgtdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...mgtpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...mgtqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...mgttr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...mgtts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...mgttu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...mgtsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....mgtcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....mgtdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....mgtdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....mgtpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....mgtqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....mgttr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....mgtts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....mgttu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....mgtsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....mgtcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....mgtdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....mgtdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....mgtpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....mgtqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....mgttr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....mgtts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....mgttu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....mgtsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.mqmcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.mqmdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.mqmdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.mqmpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.mqmqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.mqmtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.mqmts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.mqmtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.mqmsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..mqmcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..mqmdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..mqmdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..mqmpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..mqmqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..mqmtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..mqmts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..mqmtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..mqmsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...mqmcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...mqmdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...mqmdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...mqmpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...mqmqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...mqmtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...mqmts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...mqmtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...mqmsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....mqmcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....mqmdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....mqmdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....mqmpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....mqmqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....mqmtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....mqmts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....mqmtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....mqmsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....mqmcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....mqmdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....mqmdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....mqmpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....mqmqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....mqmtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....mqmts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....mqmtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....mqmsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.mstcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.mstdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.mstdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.mstpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.mstqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.msttr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.mstts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.msttu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.mstsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..mstcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..mstdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..mstdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..mstpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..mstqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..msttr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..mstts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..msttu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..mstsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...mstcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...mstdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...mstdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...mstpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...mstqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...msttr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...mstts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...msttu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...mstsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....mstcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....mstdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....mstdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....mstpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....mstqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....msttr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....mstts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....msttu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....mstsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....mstcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....mstdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....mstdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....mstpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....mstqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....msttr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....mstts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....msttu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....mstsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.mtccq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.mtcdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.mtcdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.mtcpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.mtcqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.mtctr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.mtcts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.mtctu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.mtcsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..mtccq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..mtcdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..mtcdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..mtcpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..mtcqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..mtctr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..mtcts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..mtctu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..mtcsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...mtccq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...mtcdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...mtcdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...mtcpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...mtcqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...mtctr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...mtcts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...mtctu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...mtcsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....mtccq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....mtcdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....mtcdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....mtcpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....mtcqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....mtctr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....mtcts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....mtctu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....mtcsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....mtccq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....mtcdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....mtcdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....mtcpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....mtcqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....mtctr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....mtcts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....mtctu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....mtcsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.nimcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.nimdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.nimdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.nimpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.nimqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.nimtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.nimts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.nimtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.nimsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..nimcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..nimdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..nimdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..nimpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..nimqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..nimtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..nimts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..nimtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..nimsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...nimcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...nimdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...nimdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...nimpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...nimqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...nimtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...nimts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...nimtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...nimsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....nimcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....nimdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....nimdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....nimpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....nimqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....nimtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....nimts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....nimtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....nimsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....nimcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....nimdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....nimdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....nimpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....nimqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....nimtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....nimts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....nimtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....nimsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.nqlcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.nqldm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.nqldv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.nqlpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.nqlqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.nqltr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.nqlts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.nqltu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.nqlsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..nqlcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..nqldm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..nqldv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..nqlpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..nqlqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..nqltr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..nqlts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..nqltu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..nqlsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...nqlcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...nqldm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...nqldv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...nqlpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...nqlqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...nqltr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...nqlts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...nqltu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...nqlsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....nqlcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....nqldm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....nqldv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....nqlpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....nqlqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....nqltr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....nqlts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....nqltu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....nqlsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....nqlcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....nqldm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....nqldv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....nqlpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....nqlqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....nqltr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....nqlts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....nqltu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....nqlsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.prtcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.prtdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.prtdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.prtpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.prtqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.prttr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.prtts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.prttu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.prtsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..prtcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..prtdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..prtdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..prtpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..prtqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..prttr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..prtts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..prttu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..prtsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...prtcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...prtdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...prtdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...prtpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...prtqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...prttr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...prtts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...prttu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...prtsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....prtcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....prtdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....prtdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....prtpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....prtqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....prttr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....prtts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....prttu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....prtsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....prtcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....prtdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....prtdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....prtpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....prtqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....prttr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....prtts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....prttu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....prtsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.rdbcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.rdbdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.rdbdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.rdbpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.rdbqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.rdbtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.rdbts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.rdbtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.rdbsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..rdbcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..rdbdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..rdbdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..rdbpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..rdbqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..rdbtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..rdbts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..rdbtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..rdbsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...rdbcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...rdbdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...rdbdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...rdbpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...rdbqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...rdbtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...rdbts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...rdbtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...rdbsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....rdbcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....rdbdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....rdbdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....rdbpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....rdbqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....rdbtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....rdbts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....rdbtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....rdbsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....rdbcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....rdbdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....rdbdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....rdbpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....rdbqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....rdbtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....rdbts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....rdbtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....rdbsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.srccq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.srcdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.srcdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.srcpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.srcqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.srctr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.srcts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.srctu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.srcsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..srccq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..srcdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..srcdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..srcpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..srcqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..srctr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..srcts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..srctu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..srcsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...srccq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...srcdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...srcdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...srcpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...srcqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...srctr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...srcts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...srctu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...srcsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....srccq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....srcdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....srcdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....srcpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....srcqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....srctr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....srcts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....srctu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....srcsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....srccq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....srcdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....srcdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....srcpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....srcqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....srctr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....srcts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....srctu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....srcsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.stgcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.stgdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.stgdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.stgpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.stgqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.stgtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.stgts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.stgtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.stgsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..stgcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..stgdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..stgdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..stgpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..stgqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..stgtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..stgts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..stgtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..stgsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...stgcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...stgdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...stgdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...stgpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...stgqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...stgtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...stgts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...stgtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...stgsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....stgcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....stgdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....stgdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....stgpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....stgqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....stgtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....stgts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....stgtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....stgsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....stgcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....stgdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....stgdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....stgpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....stgqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....stgtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....stgts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....stgtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....stgsb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.viocq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.viodm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.viodv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.viopp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.vioqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.viotr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.viots###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.viotu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.viosb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..viocq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..viodm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..viodv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..viopp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..vioqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..viotr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..viots###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..viotu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..viosb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...viocq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...viodm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...viodv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...viopp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...vioqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...viotr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...viots###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...viotu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...viosb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....viocq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....viodm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....viodv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....viopp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....vioqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....viotr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....viots###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....viotu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....viosb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....viocq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....viodm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....viodv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....viopp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....vioqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....viotr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....viots###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....viotu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....viosb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.webcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.webdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.webdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.webpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.webqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.webtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.webts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.webtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.websb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..webcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..webdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..webdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..webpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..webqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..webtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..webts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..webtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..websb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...webcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...webdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...webdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...webpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...webqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...webtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...webts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...webtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...websb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....webcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....webdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....webdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....webpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....webqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....webtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....webts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....webtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....websb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....webcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....webdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....webdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....webpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....webqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....webtr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....webts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....webtu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....websb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.wrkcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.wrkdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.wrkdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.wrkpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.wrkqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.wrktr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.wrkts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.wrktu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.wrksb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..wrkcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..wrkdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..wrkdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..wrkpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..wrkqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..wrktr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..wrkts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..wrktu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw..wrksb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...wrkcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...wrkdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...wrkdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...wrkpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...wrkqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...wrktr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...wrkts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...wrktu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw...wrksb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....wrkcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....wrkdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....wrkdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....wrkpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....wrkqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....wrktr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....wrkts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....wrktu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw....wrksb###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....wrkcq###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....wrkdm###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....wrkdv###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....wrkpp###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....wrkqa###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....wrktr###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....wrkts###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....wrktu###"
        },
        {
          "field" : "name",
          "notMatchInsensitively" : "sw.....wrksb###"
        },
        {
          "field" : "type",
          "equals" : "Microsoft.Compute/virtualMachines"
        },
        {
          "value" : "[resourceGroup().name]",
          "notLike" : "databricks-rg*"
        }
      ]
    },
    "then" : {
      "effect" : "[parameters('effectAction')]"
    }
    }
  )
}
