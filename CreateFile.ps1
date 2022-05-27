Param (
  [Parameter(Mandatory, HelpMessage = "Please provide a valid path")]
  [string]$Path
)
New-Item $Path # Creates a new file at $Path
Write-Host "File $Path was created"
# If (-Not $Path -eq '') {
#  New-Item $Path # Creates a new file at $Path
#  Write-Host "File $Path was created"
# } Else {
#   Write-Error "Path cannot be empty"
# }
