# Possible values: 'Minor', 'Adult', 'Senior Citizen'
Param (
  [Parameter(Mandatory, HelpMessage="Enter status: Minor, Adult or Senior Citizen")]
  [string]$Status = 'Minor'
)
If ( $Status -eq 'Minor' ) {
  Write-Host $False
} ElseIf ( $Status -eq 'Adult' ) {
  Write-Host $True
} Else {
  Write-Host $False
}
