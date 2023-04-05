$i=1
while ( $i -le 9){
    $j=1
    while ( $j -le $i ) {
        Write-Host -n $j*$i=$($i*$j) "    "    
        $j=$j+1
    }
    $i=$i+1
    echo ""
} 

