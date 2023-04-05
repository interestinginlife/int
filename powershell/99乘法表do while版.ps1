$i=1
do{
    $j=1
    do{
        Write-Host -n $j*$i=$($i*$j) "    "    
        $j=$j+1
    }
    while ($j -le $i)
    $i=$i+1
    echo " "
}
while ($i -le 9)