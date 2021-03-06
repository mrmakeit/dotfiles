# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022
# if running bash

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.bin" ] ; then
    PATH="$HOME/.bin:$PATH"
fi

if [ -f "$HOME/.tokens" ] ; then
    source "$HOME/.tokens"
fi

if [ -d "$HOME/.local_profile" ] ; then
  source "$HOME/.local_profile"
fi

PATH=$PATH:$HOME/.local/share/OpenSCAD/libraries/NopSCADlib/scripts

#stty icrnl

export PATH="$HOME/.cargo/bin:$PATH"
