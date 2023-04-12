# AzureRM Policy

Based on the Azure Policy Assignments code from Jesse Loudon
* GitHub: [@JesseLoudon](https://github.com/jesseloudon)

Learning resources:

* [https://www.terraform.io/docs/providers/azurerm/r/policy_assignment.html](https://www.terraform.io/docs/providers/azurerm/r/policy_assignment.html)
* [https://docs.microsoft.com/en-us/azure/governance/policy/concepts/assignment-structure](https://docs.microsoft.com/en-us/azure/governance/policy/concepts/assignment-structure)

Blogs that might interest you

* [Using GitHub Actions and Terraform for IaC Automation](https://jloudon.com/cloud/Using-GitHub-Actions-and-Terraform-for-IaC-Automation/)
* [Azure Policy as Code with Terraform Part 1](https://jloudon.com/cloud/Azure-Policy-as-Code-with-Terraform-Part-1/)
* [Azure Policy as Code with Terraform Part 2](https://jloudon.com/cloud/Azure-Policy-as-Code-with-Terraform-Part-2/)
* [Cloud Governance with Azure Policy Part 1](https://jloudon.com/cloud/Cloud-Governance-with-Azure-Policy-Part-1/)
* [Cloud Governance with Azure Policy Part 2](https://jloudon.com/cloud/Cloud-Governance-with-Azure-Policy-Part-2/)


# Code Layout
This is the repo which contains the 3 Terraform Cloud Workspaces responsible for creation of policy definitions along with assignment of those definitions.
![ModuleLayout](\.img\azure-policy-drawing-V2.png)

## Terraform workspaces

| Name | Info |
|------|------|
| [azure-policy-assignments-nonprod](https://app.terraform.io/app/anfcorp/workspaces/azure-policy-assignments-nonprod) | Policy assignments nonprod |
| [azure-policy-assignments-prod](https://app.terraform.io/app/anfcorp/workspaces/azure-policy-assignments-prod) | Policy assignments prod |
| [azure-policy-definitions](https://app.terraform.io/app/anfcorp/workspaces/azure-policy-definitions) | Policy definitions and Policy sets |