alias tor_="sudo -u kali -H torbrowser-launcher"
alias chrome="sudo -u kali -H google-chrome"
alias code="code --user-data-dir $HOME/.config/vscode"
# apps installed through snap sometime doesn't start. This(`snapr`) temporarily resolves the bug.
alias snapr="apparmor_parser -r /var/lib/snapd/apparmor/profiles/*" 
alias ut="cd $UT"
alias wd="cd $WD"
