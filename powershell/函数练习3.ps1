<#
    .DESCRIPTION
    用于查看用户信息
    .EXAMPLE
    Get-ComputerAccount 
    .EXAMPLE
    Get-ComputerAccount -group 'user00'
#>

function Get-ComputerAccount{

    param(
        [ValidateNotNullOrEmpty()]
        [string]$Identity="",
        [string]$Group
    )
    foreach($User in $Identity){
    if($Identity -eq ""){
    Get-LocalUser | select *
    }
    if($Identity){
    Get-LocalUser $Identity | select *
    } 
    if($Group){
    Get-ADPrincipalGroupMembership $Group

    }
    }
}