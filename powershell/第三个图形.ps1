foreach ($i in 1..6){
    for ($j=6;$j -ge $i;$j--){
        Write-Host -n " "
    }
    for ($k=1;$k -le $i;$k++){
        Write-Host -n "*"
    }
    echo " "
}
echo ""
foreach ($o in 1..6){
    for ($p=1;$p -le $o;$p++){
        Write-Host -n " "
    }
    for ($l=6;$l -ge $o;$l--){
        Write-Host -n "*"
    }
    echo " "
}