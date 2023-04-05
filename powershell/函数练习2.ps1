<#
    .DESCRIPTION
    用于删除用户
    .EXAMPLE
    Remove-CompuetrAccount -UserName 'user00'
#>
function Remove-CopmuterAccount{
     
     param(
        [Parameter(Mandatory)]
        [string]$UserName

    )
    foreach ($User in $UserName){
    Remove-ADUser $User
    }
}