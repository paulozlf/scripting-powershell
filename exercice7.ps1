# Lancement du titre
Write-Host "##############################################"
Write-Host "##############################################"
Write-Host "# Bienvenue dans le jeu de la saisie mystère #"
Write-Host "############ Editeur : Paul ZELFA ############"
Write-Host "##############################################"
Write-Host "##############################################"
Write-Host ""
Write-Host ""
# Saisie du Joueur 1
[int]$SaisieJ1 = Read-Host "Entrez un chiffre entre 1 et 10 "
Clear-Host
# Définition de la plage
$range = 1..10

# Test de la saisie du Joueur 1
if ($SaisieJ1 -cin $range)
{
    # Si test OK, alors on fait la saisie de Joueur 2
    [int]$SaisieJ2 = Read-Host "Joueur 2, c'est à vous d'essayer de trouver le chiffre de Joueur 1 "
    # Test saisie Joueur 2: match avec Joueur 1 et check < ou > 
    if ($SaisieJ2 -ceq $SaisieJ1)
    {
        Write-Host "GG"
    }
    else
    {
        Write-Host "Perdu"
        if ($SaisieJ2 -lt $SaisieJ1)
        {
            Write-Host "Votre nombre est plus petit"
        }
        if ($SaisieJ2 -gt $SaisieJ1) 
        {
            Write-Host "Votre nombre est plus grand"
        }
    }
}
else {
    Write-Host "Votre saisie n'est pas comprise dans la plage, apprenez à lire les consignes..."
    pause
}