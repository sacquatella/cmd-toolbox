# Powerline
if [ -z $POWERLINE ]; then
 POWERLINE="FALSE"
fi
export TERM="screen-256color"
if [ -f /usr/share/powerline/bindings/bash/powerline.sh ] && [ $POWERLINE = "TRUE" ]
then
    source /usr/share/powerline/bindings/bash/powerline.sh
fi