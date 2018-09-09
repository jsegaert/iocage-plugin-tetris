#!/bin/sh

# Create user 'tetris'
pw add user -n tetris -c Tetris -s /bin/csh -m

# Configure shellinabox
fetch -o /home/tetris/white-on-black.css https://raw.githubusercontent.com/shellinabox/shellinabox/master/shellinabox/white-on-black.css
sysrc shellinaboxd_enable=YES
sysrc shellinaboxd_flags="--css /home/tetris/white-on-black.css -t -s /:tetris:tetris:HOME:bastet"

# Start the service
service shellinaboxd start

