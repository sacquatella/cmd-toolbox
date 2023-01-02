# CMD Toolbox
Ubuntu or Alpine image with a set of command line tools preinstalled 

- gettext 
- git 
- curl 
- emacs-nox 
- vim 
- wget 
- tig 
- mc 
- tmux 
- ranger 
- htop 
- siege 
- tshark 
- ncdu 
- iftop 
- cbm 
- speedometer 
- tree 
- python-pip 
- powerline 
- nano
- vegeta
- kubectl
- telnet
- nc
- zookeepercli
- ldap-util

## local build
```bash
docker build . -t cmd-toolbox:v0.1
```

## Run

### Docker

```bash
$ docker run -it --rm onelans/cmd-toolbox:latest
```
This will drop you into an bash shell to allow you to do what you want inside a Ubuntu system.

If your want activate powerline add `-e "POWERLINE=TRUE"`
```bash
$ docker run -it -e "POWERLINE=TRUE" --rm onelans/cmd-toolbox:latest
```


### Kubernetes

```bash
kubectl apply -f ./cmd-toolbox-pod.yml
kubectl exec -ti cmd-toolbox bash
```
or 
```bash
kubectl run -it --tty cmdbox --image=onelans/cmd-toolbox:latest --restart=Never -- bash
``` 
