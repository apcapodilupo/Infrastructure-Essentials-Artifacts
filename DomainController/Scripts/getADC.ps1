    #Variables
    $URI = "https://download.microsoft.com/download/B/0/0/B00291D0-5A83-4DE7-86F5-980BC00DE05A/AzureADConnect.msi"
    #Create Directory
    New-Item -ItemType "directory" -Path "C:\AzureADConnect\" 
    #Get Azure AD Connect installer
    Invoke-WebRequest -UseBasicparsing -Uri $URI -OutFile "C:\AzureADConnect\AzureADConnect.msi"