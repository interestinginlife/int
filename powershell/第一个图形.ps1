foreach ($i in 1..5){
    for ($j=1;$j -le $i;$j++){
        Write-Host -n "*"
    }
    echo ""
}

echo ""

for ($k=5;$k -ge 1;$k--){
    for ($n=1;$n -le $k;$n++){
        Write-Host -n "*"
    }
    echo ""
}