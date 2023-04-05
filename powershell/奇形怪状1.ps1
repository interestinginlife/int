foreach ($i in 1..5){
    if ($i -eq 2){
    continue
}   
elseif ($i -eq 4){
    continue
}
    for ($j=4;$j -ge $i;$j--){
        Write-Host -n " "
    }
    for ($k=1;$k -le $i;$k++){
        Write-Host -n " *"
    }
    echo ""
}
foreach ($o in 1..4){
<#
    Write-Host -n "  * * * *"
    echo ""
#>
    foreach ($q in 1..4){
        if ($q -eq 1){
        Write-Host -n " "
        }
        Write-Host -n " *"
    }
    echo ""
}