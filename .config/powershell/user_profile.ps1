# set PowerShell to UTF-8
[console]::InputEncoding = [console]::OutputEncoding = New-Object System.Text.UTF8Encoding

# Prompt
Import-Module posh-git

# Load prompt config
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\kali.omp.json" | Invoke-Expression

# PSReadLine
Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -BellStyle None
Set-PSReadLineKeyHandler -Chord 'Ctrl+d' -Function DeleteChar
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView

# MOTD (Welcome Message)
cls
Write-Host "

			Welcome!

"

# Alias
Set-Alias -Name vim -Value nvim
Set-Alias g git
Set-Alias grep findstr

Set-Alias tig 'C:\Program Files\Git\usr\bin\tig.exe'
Set-Alias less 'C:\Program Files\Git\usr\bin\less.exe'
