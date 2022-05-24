# Vérification de la présence du dossier CESI dans C:
$CheckFolder = Test-Path "C:\CESI"
if ($CheckFolder -ceq "True")
{
    Set-Location "C:\CESI"
}
# Si absent, on le crée
else {
    New-Item -Path "C:\" -Name "CESI" -ItemType Directory
    Set-Location "C:\CESI"
}

# Vérification de la présence du fichier test.txt dans C:\CESI
$CheckFile = Test-Path "C:\CESI\test.txt"
if ($CheckFile -ceq "True")
{
    Write-Host "Le fichier existe bien"
}
# Si absent, on le crée
else {
    $Content = @"
Name : Paul
Version : 1.0
Description : Fichier de test
"@
    New-Item -Path "C:\CESI" -name "test.txt" -ItemType File -Value $Content
}

# vérification du nom
[string]$AskUser = Read-Host "Veuillez saisir un nom svp"
[string]$NomComplet = "Name :$AskUser"
[string]$ContentFile = Get-Content -Path "C:\CESI\test.txt" |Select-Object -Index 0

#$ContentFile
if ($ContentFile.Contains($NomComplet))
{
    Write-Host "Le nom est OK."
}
else {
    Write-Host "Le nom n'est pas OK."
}