# Création du Tableau 1, allant de 1 à 100
$tableau01 = (1..100)

# Création du Tableau 2, allant de Z à A
[char[]]$tableau02 = (90..65)

# Check indice 0 et 1 de chaque tableau
$tableau01; $tableau02 -join ""

# Check la longueur des tableaux
$tableau01.Length; $tableau02.Length