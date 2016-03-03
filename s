#! /bin/bash

case $1 in
    "d" )
        name="download-sync"
        command=~/bin/download-sync
        ;;
    "b")
        name="backup"
        command="cd ~/code/arcana-backup && while sleep 1; do npm run upload; done"
        ;;
esac

screen -dRq $name $command
