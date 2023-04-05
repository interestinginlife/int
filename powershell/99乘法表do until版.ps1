$i=1
do{
    $j=1
    do{
        Write-Host -n $j*$i=$($i*$j) "    "    
        $j=$j+1
    }
    until ($j -gt $i)
    $i=$i+1
    echo " "
}
until ($i -gt 9)
