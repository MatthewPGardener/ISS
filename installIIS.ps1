Configuration Main
{

Param ( [string[]] $nodeName = 'localhost' )

Import-DscResource -ModuleName PSDesiredStateConfiguration

Node $nodeName
  {
    WindowsFeatureSet WindowsFeatureSetExample
    {
      Name = @("Web-Server")
      Ensure = "Present"
      IncludeAllSubFeature = $true
    }
  }
}