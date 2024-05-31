#W10/11 Cleanup# 
#31-05-2024
#List packages
    Get-AppxProvisionedPackage -online | select PackageName
#Remove packages

#Remove Cortana
    Get-AppxPackage -allusers Microsoft.549981C3F5F10 | Remove-AppxPackage
#Remove office freemium
    Get-AppxProvisionedPackage -online | %{if ($_.packagename -match "Microsoft.MicrosoftOfficeHub_18.1903.1152.0_neutral_~_8wekyb3d8bbwe") {$_ | Remove-AppxProvisionedPackage -AllUsers}}
    Get-AppxProvisionedPackage -online | %{if ($_.packagename -match "Microsoft.Reader_2020.612.451.0_neutral_~_8wekyb3d8bbwe") {$_ | Remove-AppxProvisionedPackage -AllUsers}}
    Get-AppxProvisionedPackage -online | %{if ($_.packagename -match "OneConnect") {$_ | Remove-AppxProvisionedPackage -AllUsers}}
    Get-AppxProvisionedPackage -online | %{if ($_.packagename -match "Microsoft.Office.OneNote") {$_ | Remove-AppxProvisionedPackage -AllUsers}}
#Remove comms components
    Get-AppxProvisionedPackage -online | %{if ($_.packagename -match "Microsoft.SkypeApp") {$_ | Remove-AppxProvisionedPackage -AllUsers}}
    Get-AppxProvisionedPackage -online | %{if ($_.packagename -match "Microsoft.YourPhone") {$_ | Remove-AppxProvisionedPackage -AllUsers}}
    Get-AppxProvisionedPackage -online | %{if ($_.packagename -match "Microsoft.Messaging") {$_ | Remove-AppxProvisionedPackage -AllUsers}}
    Get-AppxProvisionedPackage -online | %{if ($_.packagename -match "Microsoft.People") {$_ | Remove-AppxProvisionedPackage -AllUsers}}
    Get-AppxProvisionedPackage -online | %{if ($_.packagename -match "microsoft.windowscommunicationsapps_16005.14326.21904.0_neutral_~_8wekyb3d8bbwe") {$_ | Remove-AppxProvisionedPackage -AllUsers}}
#Remove xbox components
    Get-AppxProvisionedPackage -online | %{if ($_.packagename -match "XBox.TCUI") {$_ | Remove-AppxProvisionedPackage -AllUsers}}
    Get-AppxProvisionedPackage -online | %{if ($_.packagename -match "XBoxApp") {$_ | Remove-AppxProvisionedPackage -AllUsers}}
    Get-AppxProvisionedPackage -online | %{if ($_.packagename -match "XBoxGameOverLay") {$_ | Remove-AppxProvisionedPackage -AllUsers}}
    Get-AppxProvisionedPackage -online | %{if ($_.packagename -match "XBoxGamingOverLay") {$_ | Remove-AppxProvisionedPackage -AllUsers}}
    Get-AppxProvisionedPackage -online | %{if ($_.packagename -match "XBoxidentityProvider") {$_ | Remove-AppxProvisionedPackage -AllUsers}}
    Get-AppxProvisionedPackage -online | %{if ($_.packagename -match "XBoxSpeechToTextOverlay") {$_ | Remove-AppxProvisionedPackage -AllUsers}}
#Remove Bing components
    Get-AppxProvisionedPackage -online | %{if ($_.packagename -match "Microsoft.549981C3F5F10_1.1911.21713.0_neutral_~_8wekyb3d8bbwe") {$_ | Remove-AppxProvisionedPackage -AllUsers}}
    Get-AppxProvisionedPackage -online | %{if ($_.packagename -match "Microsoft.Adera_2013.1206.10.2936_neutral_~_8wekyb3d8bbwe") {$_ | Remove-AppxProvisionedPackage -AllUsers}}
    Get-AppxProvisionedPackage -online | %{if ($_.packagename -match "Microsoft.BingFinance_2016.408.1841.3666_neutral_~_8wekyb3d8bbwe") {$_ | Remove-AppxProvisionedPackage -AllUsers}}
    Get-AppxProvisionedPackage -online | %{if ($_.packagename -match "Microsoft.BingFoodAndDrink_2015.709.2015.1275_neutral_~_8wekyb3d8bbwe") {$_ | Remove-AppxProvisionedPackage -AllUsers}}
    Get-AppxProvisionedPackage -online | %{if ($_.packagename -match "Microsoft.BingHealthAndFitness_2015.709.2016.264_neutral_~_8wekyb3d8bbwe") {$_ | Remove-AppxProvisionedPackage -AllUsers}}
    Get-AppxProvisionedPackage -online | %{if ($_.packagename -match "Microsoft.BingNews_4.8.11001.0_neutral_~_8wekyb3d8bbwe") {$_ | Remove-AppxProvisionedPackage -AllUsers}}
    Get-AppxProvisionedPackage -online | %{if ($_.packagename -match "Microsoft.BingSports_4.6.28002.0_neutral_~_8wekyb3d8bbwe") {$_ | Remove-AppxProvisionedPackage -AllUsers}}
    Get-AppxProvisionedPackage -online | %{if ($_.packagename -match "Microsoft.BingTravel_2015.709.2019.1414_neutral_~_8wekyb3d8bbwe") {$_ | Remove-AppxProvisionedPackage -AllUsers}}
    Get-AppxProvisionedPackage -online | %{if ($_.packagename -match "Microsoft.BingWeather") {$_ | Remove-AppxProvisionedPackage -AllUsers}}
#Remove Zune components
    Get-AppxProvisionedPackage -online | %{if ($_.packagename -match "Microsoft.ZuneMusic") {$_ | Remove-AppxProvisionedPackage -AllUsers}}
    Get-AppxProvisionedPackage -online | %{if ($_.packagename -match "Microsoft.ZuneVideo") {$_ | Remove-AppxProvisionedPackage -AllUsers}}
#Remove 3D and VR components
    Get-AppxProvisionedPackage -online | %{if ($_.packagename -match "Microsoft.MixedReality.Portal") {$_ | Remove-AppxProvisionedPackage -AllUsers}}
    Get-AppxProvisionedPackage -online | %{if ($_.packagename -match "Microsoft.Print3D") {$_ | Remove-AppxProvisionedPackage -AllUsers}}
    Get-AppxProvisionedPackage -online | %{if ($_.packagename -match "Microsoft.Microsoft3DViewer") {$_ | Remove-AppxProvisionedPackage -AllUsers}}
    Get-AppxProvisionedPackage -online | %{if ($_.packagename -match "Microsoft.3DBuilder") {$_ | Remove-AppxProvisionedPackage -AllUsers}}
#Remove other components
    Get-AppxProvisionedPackage -online | %{if ($_.packagename -match "Microsoft.Wallet") {$_ | Remove-AppxProvisionedPackage -AllUsers}}
    Get-AppxProvisionedPackage -online | %{if ($_.packagename -match "Microsoft.WindowsMaps") {$_ | Remove-AppxProvisionedPackage -AllUsers}}
    Get-AppxProvisionedPackage -online | %{if ($_.packagename -match "Microsoft.WindowsFeedbackhub") {$_ | Remove-AppxProvisionedPackage -AllUsers}}
    Get-AppxProvisionedPackage -online | %{if ($_.packagename -match "Microsoft.GetHelp") {$_ | Remove-AppxProvisionedPackage -AllUsers}}
    Get-AppxProvisionedPackage -online | %{if ($_.packagename -match "Microsoft.Getstarted") {$_ | Remove-AppxProvisionedPackage -AllUsers}}
    Get-AppxProvisionedPackage -online | %{if ($_.packagename -match "Microsoft.Messaging") {$_ | Remove-AppxProvisionedPackage -AllUsers}}
    Get-AppxProvisionedPackage -online | %{if ($_.packagename -match "MirametrixInc.GlanceByMirametrix") {$_ | Remove-AppxProvisionedPackage -AllUsers}}
    Get-AppxProvisionedPackage -online | %{if ($_.packagename -match "Microsoft.WindowsSoundRecorder") {$_ | Remove-AppxProvisionedPackage -AllUsers}}
    Get-AppxProvisionedPackage -online | %{if ($_.packagename -match "Microsoft.ScreenSketch") {$_ | Remove-AppxProvisionedPackage -AllUsers}}
    Get-AppxProvisionedPackage -online | %{if ($_.packagename -match "Microsoft.StorePurchaseApp_11811.1001.1813.0_neutral_~_8wekyb3d8bbwe") {$_ | Remove-AppxProvisionedPackage -AllUsers}}
    Get-AppxProvisionedPackage -online | %{if ($_.packagename -match "Microsoft.DesktopAppInstaller_2024.506.2113.0_neutral_~_8wekyb3d8bbwe") {$_ | Remove-AppxProvisionedPackage -AllUsers}}
    Get-AppxProvisionedPackage -online | %{if ($_.packagename -match "Microsoft.FreshPaint_3.1.10383.1000_x86__8wekyb3d8bbwe") {$_ | Remove-AppxProvisionedPackage -AllUsers}}
    Get-AppxProvisionedPackage -online | %{if ($_.packagename -match "Microsoft.HEIFImageExtension_1.1.861.0_neutral_~_8wekyb3d8bbwe") {$_ | Remove-AppxProvisionedPackage -AllUsers}}
    Get-AppxProvisionedPackage -online | %{if ($_.packagename -match "Microsoft.WindowsReadingList_2016.520.50.2306_neutral_~_8wekyb3d8bbwe") {$_ | Remove-AppxProvisionedPackage -AllUsers}}
    Get-AppxProvisionedPackage -online | %{if ($_.packagename -match "Microsoft.WindowsScan_2014.523.326.3026_neutral_~_8wekyb3d8bbwe") {$_ | Remove-AppxProvisionedPackage -AllUsers}}
    Get-AppxProvisionedPackage -online | %{if ($_.packagename -match "Microsoft.MicrosoftEdge.Beta_110.0.1587.35_neutral__8wekyb3d8bbwe") {$_ | Remove-AppxProvisionedPackage -AllUsers}}
#Remove M$ preload games
    Get-AppxProvisionedPackage -online | %{if ($_.packagename -match "Microsoft.MicrosoftSolitaireCollection") {$_ | Remove-AppxProvisionedPackage -AllUsers}}
    Get-AppxProvisionedPackage -online | %{if ($_.packagename -match "Microsoft.Studios.PinballFx2_2015.324.1125.622_neutral_~_8wekyb3d8bbwe") {$_ | Remove-AppxProvisionedPackage -AllUsers}}
    Get-AppxProvisionedPackage -online | %{if ($_.packagename -match "Microsoft.Taptiles_2018.831.1350.653_neutral_~_8wekyb3d8bbwe") {$_ | Remove-AppxProvisionedPackage -AllUsers}}
#List remaining packages
    Get-AppxProvisionedPackage -online | select PackageName
#Activate system protection and recovery disk for C: drive
    Enable-ComputerRestore -Drive "C:\"
    Checkpoint-Computer -Description "RestorePoint1" -RestorePointType "MODIFY_SETTINGS"

#Finish
    Write-Output "Script executed"
