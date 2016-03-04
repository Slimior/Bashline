echo Copying files to default locations.

cp bashline ~/.bashline
mkdir -p ~/.config/bashline
if [ ! -e ~/.config/bashline/blocks ] ; then
    cp blocks ~/.config/bashline/blocks
fi

if [ -e ~/.bashrc ] ; then
    if grep bashline ~/.bashrc > /dev/null ; then
        echo Bashline already in .bashrc.
    else
        echo Adding bashline to .bashrc.
        echo '. ~/.bashline' >> ~/.bashrc
    fi
else
    echo 'No .bashrc found. Please add manually.'
fi

echo Done. Refresh by running '". ~/.bashline"'
