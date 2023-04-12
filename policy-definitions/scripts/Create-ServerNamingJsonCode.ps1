<#
.SYNOPSIS
Creates Azure Policy rule for server naming conventions.

.DESCRIPTION
Creates Azure Policy rule for server naming conventions.
Select an environment and whether to output to a JSON file.

.PARAMETER Production
Generates Azure Policy rules for Production management groups.

.PARAMETER NonProduction
Generates Azure Policy rules for Non-Production management groups.

.PARAMETER Sandbox
Generates Azure Policy rules for Sandbox management groups.

.PARAMETER SaveJsonFile
Outputs policy rule code to .json file.

.INPUTS
None. You cannot pipe objects to Create-ServerNamingJsonCode.ps1.

.OUTPUTS
System.String. Create-ServerNamingJsonCode returns a string of the policy code.
Can also generate a JSON file if -SaveJsonFile is used.

.EXAMPLE
PS> Create-ServerNamingJsonCode.ps1 -Production
{
  "if": {
    "allOf": [
      {
        "field": "name",
        "notMatchInsensitively": "sa?adcpr###"
      },
      {
        "field": "name",
        "notMatchInsensitively": "sa?adcpp###"
      },
# etc...

This example generates the policy rule code for Production. Outputs to screen only.

.EXAMPLE
PS> Create-ServerNamingJsonCode.ps1 -Production -SaveJsonFile
{
  "if": {
    "allOf": [
      {
        "field": "name",
        "notMatchInsensitively": "sa?adcpr###"
      },
      {
        "field": "name",
        "notMatchInsensitively": "sa?adcpp###"
      },
# etc...

This example generates the policy rule code for Production. Outputs to screen only and saves to a .json file in the working directory.
#>

[CmdletBinding()]
param(
    [Parameter(Mandatory, ParameterSetName = 'Production')]
    [switch]
    $Production,

    [Parameter(Mandatory, ParameterSetName = 'NonProduction')]
    [switch]
    $NonProduction,

    [Parameter(Mandatory, ParameterSetName = 'Sandbox')]
    [switch]
    $Sandbox,

    [Parameter()]
    [switch]
    $SaveJsonFile
)

$serverType = @("sa", "su", "sw")
$tierType = @("adc", "agt", "app", "bat", "bld", "cat", "cmp", "con", "cth", "fil", "fwd", "idx", "inf", "mdw", "mgr", "mgt", "mqm", "mst", "mtc", "nim", "nql", "prt", "rdb", "src", "stg", "vio", "web", "wrk")
$productionEnv = @("pr", "pp", "dr")
$sandboxEnv = @("bx", "sb")
$nonprodEnv = @("cq", "dm", "dv", "pp", "qa", "tr", "ts", "tu", "sb")
$nameMaxLength = 5

$policyObject = [PSCustomObject]@{
    "if"   = [PSCustomObject]@{"allOf" = [System.Collections.ArrayList]@() }
    "then" = [PSCustomObject]@{"effect" = "[parameters('effectAction')]" }
}

foreach ($type in $serverType) {
    foreach ($tier in $tierType) {
        $counter = 1
                        
        do {
            $name = '.' * $counter
            switch ($PSCmdlet.ParameterSetName) {
                'Production' {
                    foreach ($prod in $productionEnv) {
                        $matchString = "$type$name$tier$prod###"
                        $item = [PSCustomObject]@{ field = "name"; notMatchInsensitively = "$matchString" }
                        $policyObject.if.allOf.Add($item) | Out-Null
                    }    
                    break
                }

                'NonProduction' {
                    foreach ($nonprod in $nonprodEnv) {
                        $matchString = "$type$name$tier$nonprod###"
                        $item = [PSCustomObject]@{ field = "name"; notMatchInsensitively = "$matchString" }
                        $policyObject.if.allOf.Add($item) | Out-Null
                    }    
                    break
                }
            
                'Sandbox' {
                    foreach ($sbx in $sandboxEnv) {
                        $matchString = "$type$name$tier$sbx###"
                        $item = [PSCustomObject]@{ field = "name"; notMatchInsensitively = "$matchString" }
                        $policyObject.if.allOf.Add($item) | Out-Null
                    }
                    break
                }
            }
            $counter++
        }
        until ($counter -gt $nameMaxLength)
    }
}

$policyObject.if.allOf.Add([PSCustomObject]@{ field = "type"; equals = "Microsoft.Compute/virtualMachines" })
$policyObject.if.allOf.Add([PSCustomObject]@{ value = "[resourceGroup().name]"; notLike = "databricks-rg*" })
$policyJson = $policyObject | ConvertTo-Json -Depth 20
$policyJson

if ($SaveJsonFile) {
    switch ($PScmdlet.ParameterSetName) {
        'Production' {
            $policyJson | Out-File -FilePath .\azure-policy-rule-production.json -Force
        }

        'Sandbox' {
            $policyJson | Out-File -FilePath .\azure-policy-rule-sandbox.json -Force
        }

        'NonProduction' {
            $policyJson | Out-File -FilePath .\azure-policy-rule-nonproduction.json -Force
        }
    }
}
