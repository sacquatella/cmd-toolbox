# Powerline
if [ -z $POWERLINE ]; then
 POWERLINE="FALSE"
fi
export TERM="screen-256color"
if [ -f /usr/lib/python3.10/site-packages/powerline/bindings/bash/powerline.sh ] && [ $POWERLINE = "TRUE" ]
then
    source /usr/lib/python3.10/site-packages/powerline/bindings/bash/powerline.sh
fi