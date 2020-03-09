# Import the arm-ttk module we cloned in the dockerfile
Import-Module '/arm-ttk/arm-ttk/arm-ttk.psd1'

# Path we cloned the repository into
$TemplatePath = '/temp/'

$TestResults = Test-AzTemplate -TemplatePath $TemplatePath
# We only want to return failures
$TestFailures =  $TestResults | Where-Object { -not $_.Passed }
Write-host "::set-output name=results::Hello!"

if ($TestFailures) {
    Write-host "Yup"
    exit 1
} 

else {
    Write-Host "Nope"
    exit 0
}