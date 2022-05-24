Set-Location 'env:'
New-Item -Path Env:\CESI-Promo -Value 'RISR'
Set-Location 'C:\'
Get-Content -Path "Env:CESI-Promo"
Remove-Item -Path Env:\CESI-Promo -Force