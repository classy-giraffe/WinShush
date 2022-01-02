# WinShush
Get a clean environment on Windows 10.

# ISOs
|              | Windows 10 Enterprise LTSC 2021 x64                                                                                                                                  | Windows 10 Enterprise LTSC 2021 x86                                                                                                                                  | Windows 10 IoT Enterprise LTSC 2021 x64                                                                                                                                 |
|--------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Download URL | [Click here](https://dweb.link/ipfs/bafybeih4tqwbsoqpl2ip7mcv5ofuynto3xlh4nirkt3m4s3wdz6oph32rq?filename=en-us_windows_10_enterprise_ltsc_2021_x64_dvd_d289cf96.iso) | [Click here](https://dweb.link/ipfs/bafybeig6ccmioq2ojdrjpkslmgopupoozc6wbsvdeqaxaerc7tydbgnqj4?filename=en-us_windows_10_enterprise_ltsc_2021_x86_dvd_9f4aa95f.iso) | [Click here](https://dweb.link/ipfs/bafybeicfku5j343hn3h6qj3l4fjqj5xu5542xhhhcnt6ivhduxp4ldu7re?filename=en-us_windows_10_iot_enterprise_ltsc_2021_x64_dvd_257ad90f.is) |
| filename     | en-us_windows_10_enterprise_ltsc_2021_x64_dvd_d289cf96.iso                                                                                                           | en-us_windows_10_enterprise_ltsc_2021_x86_dvd_9f4aa95f.iso                                                                                                           | en-us_windows_10_iot_enterprise_ltsc_2021_x64_dvd_257ad90f.iso                                                                                                          |
| SHA256       | c90a6df8997bf49e56b9673982f3e80745058723a707aef8f22998ae6479597d                                                                                                     | 3276d60fa27f513b411224cd474278a9abe406159ba47776747862c7080292bc                                                                                                     | a0334f31ea7a3e6932b9ad7206608248f0bd40698bfb8fc65f14fc5e4976c160                                                                                                        |
| Description  | Standard LTSC version of Windows 10, 64-bit (recommended)                                                                                                            | Standard LTSC version of Windows 10, 32-bit (suggested for old 32-bit PCs)                                                                                           | IoT LTSC version of Windows 10, 64-bit (suggested for thin clients)                                                                                                     |

# How to activate Windows

Basically all you need to do after having installed Windows is running this command in an administrative shell:
```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/classy-giraffe/WinShush/main/init.ps1'))
``` 
