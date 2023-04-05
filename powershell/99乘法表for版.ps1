
foreach ( $i in 1..9 ){
    foreach ( $j in 1..$i ) {
        Write-Host -n $j*$i=$($i*$j) "    "    
    }
    echo ""
} 