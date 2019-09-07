$url = "https://raw.githubusercontent.com/granwizzard/My_Ansible/master/Templates/Windows/Ansible-pre-requiremtents.ps1"
$file = "$env:temp\Upgrade-PowerShell.ps1"
$username = "put your account"
$password = "put_password"

(New-Object -TypeName System.Net.WebClient).DownloadFile($url, $file)
Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Force

# version can be 3.0, 4.0 or 5.1
&$file -Version 5.1 -Username $username -Password $password -Verbose