$url = "https://github.com/classy-giraffe/WinShush/archive/main.zip"
$download_folder = (New-Object -ComObject Shell.Application).NameSpace('shell:Downloads').Self.Path
$winshush_zip = $download_folder + "\WinShush.zip"
$winshush_folder = $download_folder + "\WinShush"
$winshush_repo = $download_folder + "\WinShush\WinShush-main"
$activator = $winshush_repo + "\winactivate\winactivate.cmd"
$lgpo_bin = $winshush_repo + "\LGPO.exe"
$gpos_folder = $winshush_repo + "\GPOs"

Write-Host "Downloading WinShush archive."
Invoke-WebRequest -Uri $url -OutFile $winshush_zip

Write-Host "Extracting WinShush archive."
Expand-Archive -Path $winshush_zip -DestinationPath $winshush_folder

Write-Host "Activating Windows."
Invoke-Item $activator

Write-Host "Applying GPOs."
$lgpo_bin + "/g" + $gpos_folder
gpupdate.exe /force 

Write-Host "Removing leftovers files."
Remove-Item -Path $winshsuh_zip -Force
Remove-Item -Path $winshush_folder -Force -Recurse

Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
choco feature enable -n allowGlobalConfirmation

