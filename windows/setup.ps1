$chocolateyAppList = "firefox,7zip,vlc,vscode,spotify,adobereader,autohotkey,bitwarden"
$work = Read-Host 
ShouldInstall("work apps", "awscli,slack,zoom")
ShouldInstall("programming stuff", "python,git,golang,microsoft-windows-terminal,docker,docker-cli,docker-compose,wsl,wsl-ubuntu-2004,putty,wireshark,etcher")
ShouldInstall("creative apps", "libreoffice-fresh,gimp")
ShouldInstall("gaming stuff", "steam,discord,uplay")

function ShouldInstall(){
    [CmdletBinding()]
    param (
        [Parameter(Mandatory)]
        [string]$prompt
        [string]$appList

    $response = Read-Host "Do you want to install $prompt?: $appList"
    if ($response -eq 'y'){
        $chocolateyAppList += ",$appList"
    }
    )

}

# issues: 
# sync.com