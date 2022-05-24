# Déclaration de la variable à 0
[int]$var = 0

# Incrémentation de la varialbe, tant que le notepad est ouvert
Do
{
    $var++
    Write-Host "La variable vaut $var"
}
While
(
    Get-Process -Name notepad -ErrorAction SilentlyContinue
)
# Affiche le message si le notepad est déjà fermé ou si on le ferme pendant l'exécution du script
Write-Host "Notepad est fermé, on ne peut pas continuer !"