$global:chocolateyAppList = @('firefox',
                              '7zip',
                              'vlc',
                              'vscode',
                              'spotify',
                              'adobereader',
                              'autohotkey',
                              'bitwarden')

$work_apps = @('awscli',
            'slack',
            'zoom')

$programming = @('python',
              'git',
              'golang',
              'microsoft-windows-terminal', 
              'docker', 
              'docker-cli', 
              'docker-compose', 
              'wsl', 
              'wsl-ubuntu-2004', 
              'putty', 
              'wireshark', 
              'etcher')

$creative = @('steam',
           'discord',
           'uplay')

function main(){
    ShouldInstall "work apps" $work_apps
    ShouldInstall "programming" $programming
    ShouldInstall "creative" $creative
    ForEach ($PackageName in $global:chocolateyAppList){
        # Write-host "choco install $PackageName -y"
        choco install $PackageName -y
    }
}

function ShouldInstall($prompt, $appList){
    $response = Read-Host -Prompt "install $prompt`? [y\n] $appList"
    if ($response -eq 'y'){
        $global:chocolateyAppList += $appList
    }
}

main
# issues: 
# sync.com