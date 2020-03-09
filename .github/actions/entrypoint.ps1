# Import the arm-ttk module we cloned in the dockerfile
Import-Module '/arm-ttk/arm-ttk/arm-ttk.psd1'

# Path we cloned the repository into
$TemplatePath = '/temp/'

$TestResults = Test-AzTemplate -TemplatePath $TemplatePath
# We only want to return failures
$TestFailures =  $TestResults | Where-Object { -not $_.Passed }

Write-host "::set-output name=results::Hello!"

if ($TestFailures) {
    Write-Host "One or more templates did not pass the selected tests:"
    $TestFailures.file.name | select-object -unique
    Write-Host "Results:"
    Write-Output $TestFailures
    exit 1
} 

else {
    Write-Host "All files passed!"
    exit 0
}