# Write-Output -InputObject 'Hello World!'

# $name = Read-Host -Prompt 'Enter your name'
# Write-Output -InputObject "Hello, $name!"

$CurrentUser = Read-Host -Prompt "Please enter your name"
$CurrentTime = Get-Date -Format "d MMM yyyy HH:mm"
Write-Output -InputObject "Current time is $CurrentTime.`nAnd this is the time $CurrentUser have started PS journey."
