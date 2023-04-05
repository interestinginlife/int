﻿<#
    .EXAMPLE
    Add-CompuetrAccount -UserName 'user00'
    .EXAMPLE
    Add-CompuetrAccount -UserName 'user00' -PassWord '123456'
    .INPUTS
    string
    .DESCRIPTION
    在创建用户名的同时可以设置用户的用户名、密码、激活状态（默认关闭）、组、电话号码、城市、国家、姓氏、名字、公司、职位
#>
function Add-CompuetrAccount{
    param(
        [Parameter(Mandatory)]
        [string]$UserName, 
        [string]$PassWord,
        [string]$TelePhone,
        [string]$City,
        [string]$country,
        [string]$Surname,
        [string]$FirstName,
        [string]$Firm,
        [string]$Title,
        [string]$Enable,
        [string]$Disable,
        [string]$group,
        [string]$GivenName

    )

foreach ($User in $UserName){
    try {
    New-LocalUser -name $User -NoPassword  -ErrorAction stop
    Disable-ADAccount -Identity $User
    Set-ADUser -Identity $User -ChangePasswordAtLogon $false
    }
    catch{
        Write-Warning -Message "已存在用户"
    }
    if ($group){
    try{
        Add-ADGroupMember $group $User
    }
    catch{
        Write-Warning -Message "没有这个组"
    }
    }
    if($Enable){
    Enable-ADAccount -Identity $User
    }
    if($Disable){
    Disable-ADAccount -Identity $User
    }
    if($TelePhone){
    Set-ADUser -Identity $User -OfficePhone $TelePhone
    }
    if ($City){
    Set-ADUser -Identity $User -City $City
    }
    if ($country){
    Set-ADUser -Identity $User -Country $country
    }
    if ($Surname){
    Set-ADUser -Identity $User -Surname $Surname
    }
    if ($Title){
    Set-ADUser -Identity $User -Title $Title
    }
    if ($GivenName){
    Set-ADUser -Identity $User -GivenName $GivenName
    }
    if ($PassWord){
    net user $User $PassWord 
    }
    }
 }
 