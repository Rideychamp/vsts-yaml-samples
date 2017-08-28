function HandleCancel()
{
    Write-Host "Cancel Called"
}

Register-ObjectEvent -InputObject [console] -EventName "CancelKeyPress" -Action {HandleCancel}


while ($true)
{
    Write-Host "waiting for input"
    Start-Sleep -Seconds 10
}