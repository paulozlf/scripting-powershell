$range = 1..10

do {
    $var = Read-Host "Entrez un chiffre compris entre 1 et 10"
} 
until ($var -cin $range)