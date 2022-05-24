$exp1 = "2019: 01\03 - save ok"
$exp2 = "2020: 04\01 - save nok"
$match1 = "^\d{4}:\s\d{2}\\\d{2}\s-\ssave\sn?ok$"

$exp1 -match $match1
$exp1 -notmatch $match1

$exp2 -match $match1
$exp2 -notmatch $match1