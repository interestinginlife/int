foreach ($i in 1..5){
    for ($j=4;$j -ge $i;$j--){
        Write-Host -n " "
    }
    for ($k=1;$k -le $i;$k++){
        Write-Host -n " *"
    }
    echo ""
}

for ($o=1;$o -le 4;$o++){
    for ($f=1;$f -le $o;$f++){
        Write-Host -n " "
    }
    for ($l=4;$l -ge $o;$l--){
        Write-Host -n " *"
    }
    echo ""
}