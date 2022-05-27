Param (
  [string]$Path = '.\app',
  [string]$DestinationPath = '.\',
  [switch]$PathIsWebApp
)
# check content if $PathIsWebApp
If ( $PathIsWebApp ) {
  Try {
    $ContainsApplicationFiles = `
      "$( (Get-ChildItem $Path).Extension | Sort-Object -Unique )" `
      -match '\.js|\.html|\.css'
    If ( -Not $ContainsApplicationFiles ) {
      Throw "Not a web app"
    } Else {
      Write-Host "Source files look good, continuing"
    }
  } Catch {
    Throw "No backup created due to: $( $_.Exception.Message)"
  }
}
# add check for $Path parameter
If ( -Not ( Test-Path $Path ) ) {
  Throw "The source directory $Path does not exist, please specify an existing directory"
}
$date = Get-Date -format "yyyy-MM-dd"
$DestinationPath = `
  $($DestinationPath + 'backup-' + $date + '.zip')
# add destination check
If ( -Not ( Test-Path $DestinationPath ) ) {
  Compress-Archive `
    -Path $Path `
    -DestinationPath $DestinationPath `
    -CompressionLevel Fastest
  Write-Host `
    "Created backup at $DestinationPath"
} Else {
  Write-Error "Today's backup already exists"
}
