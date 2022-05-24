Set-Location 'C:\'
New-Item -Path 'C:\' -Name kprod -ItemType Directory
Set-Location 'C:\kprod'
New-Item -Path 'C:\kprod' -Name MAIN -ItemType Directory | New-Item -Path 'C:\kprod' -Name SECOND -ItemType Directory
Set-Location 'C:\kprod\MAIN'
New-Item -Path 'C:\kprod\MAIN' -Name "test.txt" -ItemType File -Value "C'est un beau fichier de test."
Set-Location 'C:\kprod\SECOND'
Move-Item -Path "C:\kprod\MAIN\test.txt" -Destination 'C:\kprod\SECOND\'
Copy-Item -Path 'C:\kprod\SECOND\test.txt' -Destination 'C:\kprod\MAIN'
Set-Location 'C:\kprod'
Remove-Item 'C:\kprod\SECOND' -Recurse -Force
Rename-Item -Path 'C:\kprod\MAIN' -NewName MAIN_new