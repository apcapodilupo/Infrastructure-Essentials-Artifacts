configuration configureServer 
{ 
   param 
   ( 
        [Parameter(Mandatory)]
        [Bool]$installIIS,
        [Bool]$installDHCP


        
    ) 
    
    Import-DscResource -ModuleName PSDesiredStateConfiguration
    Node localhost
    {

    ##configures IIS if true
    if($installIIS){

        WindowsFeature WebServer
        {
          Name = "Web-Server"
          Ensure = "Present"
        }

        WindowsFeature ManagementTools
        {
          Name = "Web-Mgmt-Tools"
          Ensure = "Present"
        }

        WindowsFeature DefaultDoc
        {
          Name = "Web-Default-Doc"
          Ensure = "Present"
        }
    }

    if($installDHCP){
        WindowsFeature DHCPServer
        {
          Name = "DHCP"
          Ensure = "Present"
        }

      }



   }
} 