#!/bin/bash

echo Copying files to default locations.

cp bashline ~/.bashline
mkdir -p ~/.config/bashline
cp blocks ~/.config/bashline/blocks

if [ -e ~/.bashrc ] ; then
    if [ -n "$(grep "bashline" ~/.bashrc)" ] ; then
        echo Bashline already in .bashrc.
    else
        echo Adding bashline to .bashrc.
        echo '. ~/.bashline' >> ~/.bashrc
    fi
else
    echo 'No .bashrc found. Creating.'
    echo '. ~/.bashline' >> ~/.bashrc
fi

echo Done. Refresh by running '". ~/.bashline"' or just open new shell.
