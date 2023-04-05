foreach ($i in 2..10){
        if($i -eq 3){
        continue
        }
        elseif($i -eq 5){
        continue
        }
        elseif($i -eq 7){
        continue
        }
        elseif($i -eq 9){
        continue
        }
    for ($j=9;$j -ge $i;$j--){
        Write-Host -n " "
    }

    foreach ($k in 1..2){
                
        Write-Host -n " *"
         if($i -eq 4){
            Write-Host -n "    "
         }
         elseif($i -eq 6){
            Write-Host -n "        "
         }
         elseif($i -eq 8){
            Write-Host -n "            "
         }
         elseif($i -eq 10){
            Write-Host -n "                "
         }

    }
    echo ""
}




foreach ($q in 2..10){
        if($q -eq 3){
        continue
        }
        elseif($q -eq 5){
        continue
        }
        elseif($q -eq 7){
        continue
        }
        elseif($q -eq 9){
        continue
        }
    for ($l=3;$l -le $q;$l++){
        Write-Host -n " "
    }

    foreach ($n in 1..2){
                
        Write-Host -n " *"
         if($q -eq 2){
            Write-Host -n "                "
         }
         elseif($q -eq 4){
            Write-Host -n "            "
         }
         elseif($q -eq 6){
            Write-Host -n "        "
         }
         elseif($q -eq 8){
            Write-Host -n "    "
         }

    }
    echo ""
}

