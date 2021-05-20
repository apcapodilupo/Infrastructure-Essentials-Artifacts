
    #install chocolatey
    Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/apcapodilupo/WVD_2020/main/Scripts/install.ps1'))
    choco install azure-ad-connect -yes --ignore-checksums
    #Create the Storage Accounts OU
    New-ADOrganizationalUnit -Name "Storage Accounts"
