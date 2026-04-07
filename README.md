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
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo gpg --dearmor -o /usr/share/keyrings/yarn-archive-keyring.gpg && echo "deb [signed-by=/usr/share/keyrings/yarn-archive-keyring.gpg] https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list > /dev/null && sudo apt-get update
```

# Running the script
## You run this like any bash script. Just do `chmod +x apt-fix.sh` and `./apt-fix.sh` - or if you use the command one-liner - just paste it into the terminal
## Hope this helps!