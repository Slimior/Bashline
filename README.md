# Bashline
Clone of Powerline written in pure Bash. Lightning fast!

![Screenshot of bashline in action](https://i.imgur.com/uyVf3Ue.png)


##Installation

Clone this repository:

    git clone https://github.com/Slimior/bashline.git

And run the setup script within:

    cd bashline
    ./setup.sh

Done.

##Usage

Basic setup of bashline should work just after installation, but where's the fun without any config, right?

Bashline, by default, uses configuration file `~/.config/blocks` which after installation should contain the setup i personally use as my daily driver.

###Config file

####Basic syntax

Each line in config file, unless started with `#`, which is reserved for comments, is a single block in bashline. Exemplary line looks like this:

    15,9,bold ;  ;jobs | wc -l | awk '$1 > 0'

And it consists of 3 parts separated by semicolons (`;`):

- formatting instructions: 2 numbers - foreground and background colors of block, and place for additional `tput`-named ANSI decorations, such as `bold` or `underlined` 

- modifiers: currently there is only one modifier - `split`, which is described below

- command: anything after the second semicolon will be evaluated by bash, and the result (unless empty) will be displayed as a segment.


####Modifiers

Currently only one modifier is implemented - `split`. It uses one required parameter and one optional, separated by a colon, in the following syntax:

    split:delimiter[:separator_color]

- `split` is a keyword, leave it alone

- `delimiter` is a string, every occurance of which will be cut out of the block content and replaced by a soft separator

- `separator_color` is, surprise, surprise, color of the soft separator used.

So a complete split declaration can look like this:

    split:/:7

Boom.
