$VarUser = Read-Host "Entrez une valeur "

if (($VarUser -ceq 8) -or ($VarUser -ceq 12) -or ($VarUser -ceq 18))
{
    Write-Host "Le chiffre $VarUser était le bon chiffre"
}
else
{
    Write-Host "Le chiffre $VarUser n'est pas le bon"
}