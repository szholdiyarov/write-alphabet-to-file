param (
  [int]$number
)
$alphabet = [char[]](65..90)
$saveFile = ".\test.txt"

if ($number -lt 1 -Or $number -gt 26) {
  Write-Error "Please, provide a number between 1 and 26."
}
else {

  if (Test-Path $saveFile) { 
    Clear-Content $saveFile
  }

  For ($i = 0; $i -lt $number; $i++) {
    $alphabet[$i] >> $saveFile
  }
  
  Write-Host "Done."
}