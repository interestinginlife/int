<# $number = Get-Random -Minimum 1 -Maximum 10
do {
    $guess = Read-Host -Prompt "what's your guess？"
    if ($guess -lt $number) {
    Write-Output 'Too low!'
}  
elseif ($guess -gt $number) {
    Write-Output 'Too high!'
}    
}
until ($guess -eq $number )
#>






$number = Get-Random -Minimum 1 -Maximum 10
do {
    $guess = Read-Host -Prompt "what's your guess？"
    if ($guess -lt $number) {
    Write-Output 'Too low!'
}  elseif ($guess -gt $number) {
    Write-Output 'Too high!'
}    
}
while ($guess -ne $number )