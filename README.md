# **Windows Terminal Configuration**

## **Table of Contents**

- [**Table of Contents**](#table-of-contents)
- [**Introduction and general information**](#introduction-and-general-information)
- [**Installation**](#installation)
  - [**Windows Terminal**](#windows-terminal)
  - [**Windows Terminal Settings**](#windows-terminal-settings)
    - [**Cloning the repo**](#cloning-the-repo)
    - [**Downloading the files manually**](#downloading-the-files-manually)
  - [**Powershell**](#powershell)
  - [**Nerd Fonts**](#nerd-fonts)
  - [**Oh My Posh**](#oh-my-posh)
  - [**Node.js**](#nodejs)
  - [**Git for Windows**](#git-for-windows)
  - [**PSReadLine**](#psreadline)
  - [**Aliases**](#aliases)
  - [**MOTDs**](#motds)
- [**Commands**](#commands)
  - [**Oh My Posh**](#oh-my-posh-1)
  - [**Node.js**](#nodejs-1)
  - [**Git for Windows**](#git-for-windows-1)
  - [**Neovim**](#neovim)
  - [**Create user profile and set command alliases**](#create-user-profile-and-set-command-alliases)
  - [**Terminal icons**](#terminal-icons)
  - [**PSReadLine**](#psreadline-1)
- [**Contributing**](#contributing)
  - [**Issues**](#issues)
  - [**Pull requests**](#pull-requests)
- [**License**](#license)
- [**Acknowledgments**](#acknowledgments)

<br>

## **Introduction and general information**

Welcome to this repo!

Here you can find my [Windows Terminal][1] configuration files and commands.

If you have any questions, feel free to ask me using the issue feature or by asking in my questions channel on Discord. You can join my discord server over at https://kylerianhd.com/dc.

If you would like the german version of this readme, you can find it here:
https://github.com/KylerianHD/Windows-Terminal-Config.git/blob/main/README-DE.md

<br>

## **Installation**

### **Windows Terminal**

To install Windows Terminal, you can either download it from the [Microsoft Store][2] or from the [official GitHub repository][3].
<br>

### **Windows Terminal Settings**

To install the settings, you can either clone the repo or download the files manually.
<br>

#### **Cloning the repo**

To clone the repo, you can use the following command:

```bash
git clone https://github.com/KylerianHD/Windows-Terminal-Config.git
```

Please note that you need to have git installed on your system.
<br>

#### **Downloading the files manually**

To download the files manually, you can use the following link or by clicking the green code button and then clicking download zip.
<br>
Link: https://github.com/KylerianHD/Windows-Terminal-Config/archive/refs/heads/main.zip
<br>

### **Powershell**

I use Powershell as standard console. To install the Powershell, you can download it from the [Microsoft Store][4].
<br>

### **Nerd Fonts**

To install the Nerd Fonts, you can either download them from the [official website][5] or from the [Nerd Fonts GitHub repository][6]. I personaly use the [Roboto Mono Nerd Font][7].
<br>

### **Oh My Posh**

I personaly like the Kali theme the most but that probably just me hacking/pentester brain xD. So feel free to use any theme you like. You can find all the themes with screenshots on there [official website][8].
<br>
To configure Oh My Posh and load it to your user profile, you can add the following commands to the user_profile.ps1 file. Make sure that you changed the path to the theme you want to use. Note that the command "Import-Module oh-my-posh" is deprecated. You can find more information about that on the official website linked above.

```powershell
# Prompt
Import-Module posh-git
# Load prompt config
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\kali.omp.json" | Invoke-Expression
```

### **Node.js**

You could install Node.js with the command I provided you below but I would recommend to install it with the [official installer][9] for Windows. That makes it much easier for most people and especially for beginners.
<br>

### **Git for Windows**

Same as Node.js you could install Git for Windows with the command I provided you below but I would also recommend with Git to install it with the [official installer][10] for Windows.
<br>

### **PSReadLine**

PSReadLine is one of my favorite tools for Powershell. Just with the History and ListView features I improved my workflow a lot espaclly when I forget a command or want to use a command I used before.

To configure PSReadLine and bind it to your user profile, you can add the following commands to the user_profile.ps1 file. Make sure you check out the [official GitHub repository][11] for more information and configuration options.

```powershell
# PSReadLine
Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -BellStyle None
Set-PSReadLineKeyHandler -Chord 'Ctrl+d' -Function DeleteChar
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
```
<br>

### **Aliases**

Aliases are a great way to make your life easier. You can create your own aliases or use the ones I provided you below. Just add the following commands to your user_profile.ps1 file. Make sure you check out the [official documentation][12] for more information and configuration options.
<br>
Because I am used to linux commands, most of my aliases are based on linux commands. But feel free to edit those like you want.

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

MOTD stands for Message of the Day. It is a welcome message that is displayed when you open a new Powershell window. You can create your own MOTD or use the one I provided you below. Just add the following commands to your user_profile.ps1 file. Make sure you check out the [official documentation][13] for more information and configuration options.

```powershell
# MOTD (Welcome Message)
cls
Write-Host "

			Welcome!

"
```
<br>

## **Commands**

### **Oh My Posh**

To install Oh My Posh, you can use the following command:

```bash
winget install JanDeDobbeleer.OhMyPosh -s winget
```

### **Node.js**

You can install Node.js, with the following command:

```bash
winget install OpenJS.NodeJS
# or for LTS
winget install OpenJS.NodeJS.LTS
```

### **Git for Windows**

Git for Windows can be installed using the following command:

```bash
winget install -e --id Git.Git
```

### **Neovim**

You can use the following command to install Neovim:

```bash
winget install -e --id neovim.neovim
```

### **Create user profile and set command alliases**

To create a user profile and set command alliases, you can use the following command:

```bash
mkdir .config/powershell
nvim .config/powershell/user_profile.ps1
nvim $PROFILE.CurrentUserCurrentHost
```

### **Terminal icons**

Install the terminal icons, with the following command:

```bash
Install-Module -Name Terminal-Icons -Repository PSGallery -Force
```

### **PSReadLine**

To install PSReadLine, you can use the following command:

```bash
Install-Module -Name PSReadLine -AllowPrerelease -Scope CurrentUser -Force -SkipPublisherCheck
```
<br>

## **Contributing**

### **Issues**

If you have any issues, feel free to open an issue using the issue feature.
<br>

### **Pull requests**

If you want to contribute to this repo, feel free to open a pull request.
<br>

## **License**

This project is licensed under the MIT License - see the information about that here:
<br>
[https://github.com/git/git-scm.com/blob/main/MIT-LICENSE.txt](https://github.com/git/git-scm.com/blob/main/MIT-LICENSE.txt)
<br>
<br>

## **Acknowledgments**

- [Microsoft](https://www.microsoft.com/) for creating Windows Terminal
- [Nerd Fonts](https://www.nerdfonts.com/) for creating/providing the fonts
- [Oh My Posh](https://ohmyposh.dev/) for creating/providing the themes
- [PSGallery](https://www.powershellgallery.com/) for creating the powershell gallery for all the modules
- [PSReadLine](https://github.com/PowerShell/PSReadLine) for creating the readline implementation for powershell
- [Node.js](https://nodejs.org/en/) for creating the JavaScript runtime environment
- [git for windows](https://gitforwindows.org/) for providing git for windows
- [neovim](https://neovim.io/) for creating/providing a vim like editor for windows

<!--- ## **References** --->

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
