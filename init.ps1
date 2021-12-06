$url = "https://github.com/classy-giraffe/WinShush/archive/main.zip"
$download_folder = (New-Object -ComObject Shell.Application).NameSpace('shell:Downloads').Self.Path
$winshush_zip = $download_folder + "\WinShush.zip"
$winshush_folder = $download_folder + "\WinShush"

Invoke-WebRequest -Uri $url -OutFile $winshush_zip
Expand-Archive -Path $winshush_zip -DestinationPath $winshush_folder
Invoke-Item "WinShush\WinShush-main\winactivate\winactivate.cmd"

Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
choco feature enable -n allowGlobalConfirmation

Remove-Item -Path $winshsuh_zip -Force
Remove-Item -Path $winshush_folder -Force -Recurse