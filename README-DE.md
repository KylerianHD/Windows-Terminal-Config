# **Windows-Terminal-Konfiguration**

## **Inhaltsübersicht**

- [**Inhaltsübersicht**](#inhaltsübersicht)
- [**Einleitung und allgemeine Informationen**](#einleitung-und-allgemeine-informationen)
- [**Einrichtung**](#einrichtung)
  - [**Windows Terminal**](#windows-terminal)
  - [**Windows-Terminal-Einstellungen**](#windows-terminal-einstellungen)
    - [**Klonen des Projektarchivs Repositorys**](#klonen-des-projektarchivs-repositorys)
    - [**Manuelles Herunterladen der Dateien**](#manuelles-herunterladen-der-dateien)
  - [**Powershell**](#powershell)
  - [**Nerd Fonts**](#nerd-fonts)
  - [**Oh My Posh**](#oh-my-posh)
  - [**Node.js**](#nodejs)
  - [**Git for Windows**](#git-for-windows)
  - [**PSReadLine**](#psreadline)
  - [**Aliase**](#aliase)
  - [**MOTDs**](#motds)
- [**Befehle**](#befehle)
  - [**Oh My Posh**](#oh-my-posh-1)
  - [**Node.js**](#nodejs-1)
  - [**Git for Windows**](#git-for-windows-1)
  - [**Neovim**](#neovim)
  - [**Benutzerprofil erstellen und Befehlszuordnungen festlegen**](#benutzerprofil-erstellen-und-befehlszuordnungen-festlegen)
  - [**Terminal icons**](#terminal-icons)
  - [**PSReadLine**](#psreadline-1)
- [**Beitrag**](#beitrag)
  - [**Probleme**](#probleme)
  - [**Pull requests**](#pull-requests)
- [**Lizenz**](#lizenz)
- [**Danksagungen**](#danksagungen)

<br>

## **Einleitung und allgemeine Informationen**

Willkommen in diesem Repo!

Hier findet ihr meine Windows Terminal Konfigurationsdateien und Befehle.

Wenn ihr irgendwelche Fragen habt, könnt ihr mich gerne über die Problemfunktion oder in meinem Fragen-Kanal auf Discord fragen. Ihr könnt meinem Discord-Server unter https://kylerianhd.com/dc beitreten.

Wenn ihr die englische Version dieser Readme-Datei lesen wollt, findet ihr sie hier:
https://github.com/KylerianHD/Windows-Terminal-Config.git/blob/main/README.md

<br>

## **Einrichtung**

### **Windows Terminal**

Um Windows Terminal zu installieren, könnt ihr es entweder aus dem [Microsoft Store][2] oder aus dem [offiziellen GitHub-Repository][3] herunterladen.
<br>

### **Windows-Terminal-Einstellungen**

Um die Einstellungen zu installieren, könnt ihr entweder das Repo klonen oder die Dateien manuell
herunterladen.
<br>

#### **Klonen des Projektarchivs Repositorys**

Um das Repo zu klonen, könnt ihr den folgenden Befehl verwenden:

```bash
git clone https://github.com/KylerianHD/Windows-Terminal-Config.git
```

Bitte beachtet, dass ihr git auf eurem System installiert haben müsst.
<br>

#### **Manuelles Herunterladen der Dateien**

Um die Dateien manuell herunterzuladen, könnt ihr den folgenden Link verwenden oder auf die grüne Code-
Schaltfläche und dann auf zip herunterladen klicken.
<br>
Link: https://github.com/KylerianHD/Windows-Terminal-Config/archive/refs/heads/main.zip
<br>

### **Powershell**

Ich verwende Powershell als Standardkonsole. Um Powershell zu installieren, könnt ihr es aus dem [Microsoft Store][4] herunterladen.
<br>

### **Nerd Fonts**

Um Nerd Fonts zu installieren, könnt ihr sie entweder von der [offiziellen Website][5] oder fom [Nerd Fonts GitHub-Repository][6] herunterladen. Ich persönlich verwende die [Roboto Mono Nerd Font][7].
<br>

### **Oh My Posh**

Mir persönlich gefällt das Kali-Theme am besten, aber das ist wahrscheinlich nur mein Hacking/Pentester-Kopf xD. Ihr könnt also jedes beliebige Theme verwenden. Alle Themes könnt ihr mit Screenshots auf der
[offiziellen Website][8] finden.
<br>
Um Oh My Posh zu konfigurieren und in euer Benutzerprofil zu laden, könnt ihr die folgenden Befehle in die Datei "user_profile.ps1" einfügen. Vergewissert euch, dass ihr den Pfad zu dem gewünschten Theme 
geändert habt. Beachtet, dass der Befehl "Import-Module oh-my-posh" veraltet ist. Weitere Informationen dazu findet ihr auf der oben verlinkten offiziellen Website.

```powershell
# Prompt
Import-Module posh-git
# Load prompt config
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\kali.omp.json" | Invoke-Expression
```

### **Node.js**

Ihr könnt Node.js mit dem unten angegebenen Befehl installieren, aber ich würde empfehlen, es mit dem [offiziellen Installationsprogramm][9] für Windows zu installieren. Das macht es für die meisten Leute und
besonders für Anfänger viel einfacher.
<br>

### **Git for Windows**

Genau wie Node.js könnt ihr Git für Windows mit dem unten angegebenen Befehl installieren, aber ich würde auch bei Git empfehlen, es mit dem [offiziellen Installationsprogramm][10] zu installieren.
<br>

### **PSReadLine**

PSReadLine ist eines meiner Lieblingstools für Powershell. Gerade mit den Funktionen History und ListView habe ich meinen Arbeitsablauf sehr verbessert, vor allem wenn ich einen Befehl vergessen habe oder einen
Befehl wiederverwenden möchte, den ich vorher schon einmal benutzt habe.

Um PSReadLine zu konfigurieren und an euer Benutzerprofil zu binden, könnt ihr die folgenden Befehle zur Datei "user_profile.ps1" hinzufügen. Weitere Informationen und Konfigurationsoptionen
findet ihr im [offiziellen GitHub-Repository][11].

```powershell
# PSReadLine
Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -BellStyle None
Set-PSReadLineKeyHandler -Chord 'Ctrl+d' -Function DeleteChar
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
```
<br>

### **Aliase**

Aliase sind eine großartige Möglichkeit, euer Leben einfacher zu machen. Ihr könnt eure eigenen Aliase erstellen oder die unten aufgeführten verwenden. Fügt einfach die folgenden Befehle zu eurer Datei "user_profile.ps1" hinzu. In der [offiziellen Dokumentation][12] findet ihr weitere Informationen und Konfigurationsoptionen.
<br>
Da ich mit Linux-Befehlen am meisten vertraut bin, basieren die meisten meiner Aliase auf Linux-Befehlen. Aber ihr könnt diese natürlich nach Belieben bearbeiten.

```powershell
# Aliases
Set-Alias -Name vim -Value nvim
Set-Alias g git
Set-Alias grep findstr

Set-Alias tig 'C:\Program Files\Git\usr\bin\tig.exe'
Set-Alias less 'C:\Program Files\Git\usr\bin\less.exe'
```
<br>

### **MOTDs**

MOTD steht für Message of the Day (Nachricht des Tages). Es handelt sich um eine Willkommensnachricht, die angezeigt wird, wenn ihr ein neues Powershell-Fenster öffnet. Ihr könnt eure eigene MOTD erstellen
oder die von mir unten bereitgestellte verwenden. Fügt einfach die folgenden Befehle zu eurer Datei "user_profile.ps1" hinzu. In der [offiziellen Dokumentation][13] findet ihr weitere Informationen und Konfigurationsoptionen.

```powershell
# MOTD (Welcome Message)
cls
Write-Host "

			Welcome!

"
```
<br>

## **Befehle**

### **Oh My Posh**

Um Oh My Posh zu installieren, könnt ihr den folgenden Befehl verwenden:

```bash
winget install JanDeDobbeleer.OhMyPosh -s winget
```

### **Node.js**

Ihr könnt Node.js mit dem folgenden Befehl installieren:

```bash
winget install OpenJS.NodeJS
# or for LTS
winget install OpenJS.NodeJS.LTS
```

### **Git for Windows**

Git for Windows kann mit dem folgenden Befehl installiert werden:

```bash
winget install -e --id Git.Git
```

### **Neovim**

Ihr könnt den folgenden Befehl verwenden, um Neovim zu installieren:

```bash
winget install -e --id neovim.neovim
```

### **Benutzerprofil erstellen und Befehlszuordnungen festlegen**

Um ein Benutzerprofil zu erstellen und Befehlszuweisungen festzulegen, könnt ihr den folgenden Befehl verwenden:

```bash
mkdir .config/powershell
nvim .config/powershell/user_profile.ps1
nvim $PROFILE.CurrentUserCurrentHost
```

### **Terminal icons**

Installiert die Terminal Icons mit dem folgenden Befehl:

```bash
Install-Module -Name Terminal-Icons -Repository PSGallery -Force
```

### **PSReadLine**

Um PSReadLine zu installieren, könnt ihr den folgenden Befehl verwenden:

```bash
Install-Module -Name PSReadLine -AllowPrerelease -Scope CurrentUser -Force -SkipPublisherCheck
```
<br>

## **Beitrag**

### **Probleme**

Bei Problemen gerne ein Problem über die Problemfunktion öffnen.
<br>

### **Pull requests**

Wenn du zu diesem Repository etwas beitragen möchten, kannst du einen Pull-Request öffnen.
<br>

## **Lizenz**

Dieses Projekt ist unter der MIT-Lizenz lizenziert - Informationen dazu gibt es hier:
<br>
[https://github.com/git/git-scm.com/blob/main/MIT-LICENSE.txt](https://github.com/git/git-scm.com/blob/main/MIT-LICENSE.txt)
<br>
<br>

## **Danksagungen**

- [Microsoft](https://www.microsoft.com/) für die Erstellung von Windows Terminal
- [Nerd Fonts](https://www.nerdfonts.com/) für die Erstellung/Bereitstellung der Schriftarten
- [Oh My Posh](https://ohmyposh.dev/) für die Erstellung/Bereitstellung der Themes
- [PSGallery](https://www.powershellgallery.com/) für die Erstellung der Powershell-Galerie für alle Module
- [PSReadLine](https://github.com/PowerShell/PSReadLine) für die Erstellung der Readline-Implementierung für Powershell
- [Node.js](https://nodejs.org/en/) für die Erstellung der JavaScript-Laufzeitumgebung
- [git for windows](https://gitforwindows.org/) für die Bereitstellung von git für Windows
- [neovim](https://neovim.io/) für die Erstellung/Bereitstellung eines vim-ähnlichen Editors für Windows

<!--- ## **Referenzen** --->

[1]: https://github.com/microsoft/terminal
[2]: https://www.microsoft.com/store/productId/9N0DX20HK701
[3]: https://github.com/microsoft/terminal
[4]: https://www.microsoft.com/store/productId/9MZ1SNWT0N5D
[5]: https://www.nerdfonts.com/
[6]: https://github.com/ryanoasis/nerd-fonts
[7]: https://github.com/ryanoasis/nerd-fonts/releases/download/v2.3.3/RobotoMono.zip
[8]: https://ohmyposh.dev/docs/themes
[9]: https://nodejs.org/en/download/
[10]: https://gitforwindows.org/
[11]: https://github.com/PowerShell/PSReadLine
[12]: https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/set-alias?view=powershell-7.3
[13]: https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/write-host?view=powershell-7.3
