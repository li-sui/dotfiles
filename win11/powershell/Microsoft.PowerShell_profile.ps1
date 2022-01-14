# set PowerShell to UTF-8
[console]::InputEncoding = [console]::OutputEncoding = New-Object System.Text.UTF8Encoding


Import-Module oh-my-posh
$omp_config = Join-Path $PSScriptRoot ".\lee.json"
oh-my-posh --init --shell pwsh --config $omp_config | Invoke-Expression

Import-Module -Name Terminal-Icons

# Utilities
function which ($command) {
  Get-Command -Name $command -ErrorAction SilentlyContinue |
    Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}
#Alias
Set-Alias subl 'F:\Softwares\Sublime Text 3\sublime_text.exe'
Set-Alias grep findstr
