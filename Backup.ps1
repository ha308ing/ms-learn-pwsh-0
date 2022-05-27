Param (
  [string]$Path = '.\app',
  [string]$DestinationPath = '.\'
)
$date = Get-Date -format "yyyy-MM-dd"
$DestinationPath = `
  $($DestinationPath + 'backup-' + $date + '.zip')
Compress-Archive `
  -Path $Path `
  -DestinationPath $DestinationPath `
  -CompressionLevel Fastest
Write-Host `
  "Created backup at $DestinationPath"
