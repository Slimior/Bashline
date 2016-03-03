echo Copying files to default locations.

cp bashline ~/.bashline
mkdir -p ~/.config/bashline
cp blocks ~/.config/bashline/blocks

echo Adding bashline to .bashrc.

echo '. ~/.bashline' >> ~/.bashrc

echo Done.
