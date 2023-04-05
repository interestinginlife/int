function Get-AllAduser{
    switch($args){
        -domain {Get-ADUser -Filter *}
        -group {Get-ADGroup -Filter *}
        -localgroup {Get-LocalGroup | select *}
    }
 } 



function set-alladuser{
    switch($args){
        -enable {
        foreach ($i in ((Get-ADUser -Filter * | where name -ne "krbtgt").name)){
             try{
                Enable-ADAccount -Identity $i
             }
             catch{
                Write-Warning -Message " 用户 '$i' 启动失败"
             }
        }}
        -disable {
        foreach ($i in ((Get-ADUser -Filter * | where name -ne "administrator").name)){
             try{
                Disable-ADAccount -Identity $i
             }
             catch{
                Write-Warning -Message " 用户 '$i' 禁用失败"
             }
         }}
    }
}

