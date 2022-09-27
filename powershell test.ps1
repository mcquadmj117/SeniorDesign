$timer = new-timespan -Minutes 1
$clock = [diagnostics.stopwatch]::StartNew()
while ($clock.elapsed -lt $timer){
$command=wmic process list
cls
$command
start-sleep -seconds 5
}
write-host "Timer end"