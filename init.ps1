$url = "https://github.com/classy-giraffe/WinShush/archive/main.zip"
$download_folder = (New-Object -ComObject Shell.Application).NameSpace('shell:Downloads').Self.Path
$winshush_zip = $download_folder + "\WinShush.zip"
$winshush_folder = $download_folder + "\WinShush"
$winshush_repo = $download_folder + "\WinShush\WinShush-main"
$activator = $winshush_repo + "\winactivate\winactivate.cmd"

if (Test-Path -Path $winshush_zip -PathType Leaf) {
    Write-Host "Archive already existent, deleting it."
    Remove-Item -Path $winshush_zip -Force
}
Invoke-WebRequest -Uri $url -OutFile $output
if (Test-Path -Path $winshush_folder) {
    Write-Host "Folder already existent, deleting it."
    Remove-Item -Path $winshush_folder -Force -Recurse
}

Write-Host "Downloading WinShush archive."
Invoke-WebRequest -Uri $url -OutFile $winshush_zip

Write-Host "Extracting WinShush archive."
Expand-Archive -Path $winshush_zip -DestinationPath $winshush_folder

Write-Host "Activating Windows."
Invoke-Item $activator
