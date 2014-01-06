#!/bin/bash

..() { cd ..; }
...() { cd ../..; }
....() { cd ../../..; }
.....() { cd ../../../..; }
......() { cd ../../../../..; }
du1() { du -h --max-depth=1; }
du1g() { du1 | grep G; }
du1m() { du1 | grep M; }
du1gs() { du1g | sort -n; }
du1ms() { du1m | sort -n; }
la() { ls -a; }
lal() { ls -al; }
ll() { ls -al; }
l.() { ls -d .*; }
q() { exit; }
:q() { exit; }
ZZ() { exit; }
ta() { tmux attach || tmux; }
rscp() { rsync --progress -r --rsh=ssh $1 $2; }
gdr() { sudo killall -SIGHUP gunicorn_django; }
if [ "$STY" != "" ]; then
    man() { screen -t man\ $1 man $1; }
    sping() { screen -t "ping $1" ping $1; }
    svi() { screen -t $1 sudo vim $1; }
    svs() { screen vim -S; }
    root() { screen -t root sudo bash -l; }
    vi() { screen vim $1 $2 $3 $4 $5 $6; }
elif [ "$TMUX" ]; then
    man() { tmux new-window -n "man $1" "man $1"; }
    root() { tmux new-window -n root "sudo bash -l"; }
    svi() { tmux new-window -n $1 "sudo vim $1"; }
    vi() { 
        if [ "$DISPLAY" == "" ]; then
            if [ "`ps ax | grep -c /usr/bin/X`" == "2" ]; then
                export DISPLAY=:0
                tmux set-environment DISPLAY :0
            fi
        fi
        if [ "$DISPLAY" ]; then
            VIMSERVER=`vim --serverlist`
            if [ "$VIMSERVER" == "GVIM" ]; then
                gvim --remote $1
            elif [ "$VIMSERVER" ]; then
                echo $VIMSERVER
                vim --remote $1
                tmux select-window -t vim
            else
                echo "Starting new gvimserver"
                DISPLAY=$DISPLAY gvim $1 $2 $3
            fi
        else
            tmux new-window -n vim "vim $1 $2 $3 $4 $5 $6"
        fi
    }
	ping() { tmux new-window -n "ping $1" "ping $1"; }
	tail() { tmux new-window -n "$1" "tail -f $1"; }
	ssh() { tmux new-window -n "$1" "ssh $1"; }
fi
