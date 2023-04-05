foreach ($i in 1..5){
    for ($j=4;$j -ge $i;$j--){
        Write-Host -n " "
    }
    for ($k=1;$k -le $i;$k++){
        Write-Host -n " *"
    }
    echo ""
}
