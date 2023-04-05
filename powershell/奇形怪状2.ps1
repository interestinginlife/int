foreach ($i in 1..5){
    for ($j=4;$j -ge $i;$j--){
        Write-Host -n " "
    }
    for ($k=1;$k -le $i;$k++){
        if ( $i -eq 3 ){
            if ( $k -eq 2){
                Write-Host -n " " ""
                continue
            }
        }
        elseif ( $i -eq 4 ){
            if ( $k -eq 2){
                Write-Host -n " " ""
                continue
            }
            elseif ( $k -eq 3){
                Write-Host -n " " ""
                continue
            }
        }elseif ( $i -eq 5 ){
            if ( $k -eq 2){
                Write-Host -n " " ""
                continue
            }
            elseif ( $k -eq 3){
                Write-Host -n " " ""
                continue
            }
            elseif ( $k -eq 4){
                Write-Host -n " " ""
                continue
        }
        }
        Write-Host -n " *"
    }
    echo ""
}

foreach ($q in 1..4){
        if ($q -eq 1){
        Write-Host -n " "
        }
        Write-Host -n " *"
    }
    echo ""

 foreach ($l in 1..6){
    foreach ($q in 1..2){
        if ($q -eq 1){
        Write-Host -n " " " "
        }
        Write-Host -n " *"
    }
    echo ""
}