# Déclaration des différentes variables
[string]$Q1 = "PowerShell permet-il de developper un site Web ?"
[string]$Q2 = "PowerShell est disponible sur un systeme Apple ?"
[string]$Q3 = "PowerShell permet-il de faire le cafe ?"
[string]$Q4 = "PowerShell permet-il de faire des jeux ?"
[string]$Q5 = "PowerShell est-il utilise pour faire de la gestion de parc informatique ?"
[string]$Q6 = "PowerShell permet-il de faire des scripts ?"
[string]$Q7 = "Avez-vous etudiez au CESI ?"
[string]$Q8 = "Possedez-vous un smartphone Apple ?"
[string]$Q9 = "Portez-vous des lunettes ?"
[string]$Q10 = "Votre patron est-il sympathique ?"
[string[]]$Questions = @($Q1, $Q2, $Q3, $Q4, $Q5, $Q6, $Q7, $Q8, $Q9, $Q10)
[int[]]$Score = @()
[int]$DifficultEasy = 3
[int]$DifficultMedium = 5
[int]$DifficultHard = 10
[int]$Difficulty = 3
[bool]$Replay = $true 

#### Début de la boucle de questionnaire
while($Replay)
{
    # Affichage du titre
    Write-Host "#########################################"
    Write-Host "##### Es-tu un pro de PowerShell ?? #####"
    Write-Host "######### Editeur : Paul ZELFA ##########"
    Write-Host "#########################################"
    Write-Host ""
    Write-Host ""

    # Affichage des questions de 5 questions de façon aléatoire
    $Questions | Get-Random -Count 5
    
    # Saisie des réponses
    [string]$Reponse1 = Read-Host "Quelle est votre reponse ?"
    [string]$Reponse2 = Read-Host "Quelle est votre reponse ?"
    [string]$Reponse3 = Read-Host "Quelle est votre reponse ?"
    [string]$Reponse4 = Read-Host "Quelle est votre reponse ?"
    [string]$Reponse5 = Read-Host "Quelle est votre reponse ?"

    # Donne 3 essais pour chaque question
    [int]$Try = 0
    while($Try -lt 3)
    {
        $Try++
    }

    # Proposition pour rejouer 
    $AskReplay = Read-Host "Voulez-vous rejouer ?"
    if ($AskReplay -eq "oui")
    {
        $Replay = $true
    }
    else
    {
        $Replay = $false
    }
}