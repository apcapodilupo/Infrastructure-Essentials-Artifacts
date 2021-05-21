
    try{ 
        Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/apcapodilupo/WVD_2020/main/Scripts/install.ps1'))

    }
    catch{
        Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/apcapodilupo/WVD_2020/main/Scripts/install.ps1'))

    }


     try{ 
            choco install azure-ad-connect -yes --ignore-checksums

    }
    catch{
            choco install azure-ad-connect -yes --ignore-checksums

    }


     try{ 
        New-ADOrganizationalUnit -Name "Storage Accounts"

    }
    catch{
        New-ADOrganizationalUnit -Name "Storage Accounts"

    }

    exit 0