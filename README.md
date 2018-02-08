# dotfiles
## how to fix sound issues (dell xps 9343)
add to /etc/modules the following line:
`sdn-soc-rt286`

## dotfiles
Contains:
* .vimrc (based on [amix's awesome vimrc](https://github.com/amix/vimrc) - it's really awesome!)
* .gitconfig
* .bashrc; .inputrc; .bash_aliases

### How to install
`./install.sh`

### Fix sound issue (on Dell XPS13-9343)
* To verify is works:
`sudo modprobe snd-soc-rt286`
* To have the module loaded automatically on start-up:
`sudo vim /etc/modules`
* Add the following line:
`snd-soc-rt286`

