# fix-apt-github-codespaces

## INFO: Use this in GitHub Codespaces!
## If you get an error like this:
```textfile
W: GPG error: https://dl.yarnpkg.com/debian stable InRelease: The following signatures couldn't be verified because the public key is not available: NO_PUBKEY 62D54FD4003F6525

E: The repository 'https://dl.yarnpkg.com/debian stable InRelease' is not signed.

N: Updating from such a repository can't be done securely, and is therefore disabled by default.

N: See apt-secure(8) manpage for repository creation and user configuration details.
```
## Use this to fix this.

## This only support Linux machines with apt! This uses `apt-get` so it supports every machine that has apt. Do not use Arch Linux with this - Arch uses `pacman`

## Command one-liner:
```bash
curl -sSL https://raw.githubusercontent.com/0XOPx/fix-apt-github-codespaces/main/apt-fix.sh | sudo bash
```
## Info: Do not use this is you aren't sure what the script does. If you aren't, look at it.

# Running the script
## You run this like any bash script. Just do `chmod +x apt-fix.sh` and `./apt-fix.sh` - or if you use the command one-liner - just paste it into the terminal
## Hope this helps!

![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)
![Platform: GitHub Codespaces](https://img.shields.io/badge/Platform-GitHub%20Codespaces-blue?logo=github)