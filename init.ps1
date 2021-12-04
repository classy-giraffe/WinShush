$url = "https://github.com/classy-giraffe/WinShush/archive/main.zip"
$output = "WinShush.zip"
$folder = "WinShush"
if (Test-Path -Path $output -PathType Leaf) {
    Write-Host "Archive already existent, deleting it."
    Remove-Item -Path $output -Force
}
Invoke-WebRequest -Uri $url -OutFile $output
if (Test-Path -Path $folder) {
    Write-Host "Folder already existent, deleting it."
    Remove-Item -Path $folder -Force -Recurse
}
Expand-Archive -Path $output -DestinationPath $folder
Invoke-Item "WinShush\WinShush-main\winactivate\winactivate.cmd"
Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
