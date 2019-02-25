# CMD Toolbox
Ubuntu image with a set of command line tools preinstalled 

- cbm
- curl
- emacs-nox
- gettext
- git
- htop
- iftop
- kubectl
- ldap-util
- mc
- nano
- nc
- ncdu
- powerline
- python-pip
- ranger
- siege
- speedometer
- telnet
- tig
- tmux
- tree
- vegeta
- vim
- wget
- zookeepercli

## local build
```bash
docker build . -t cmd-toolbox:v0.4
```

## Run

### Docker

```bash
$ docker run -it --rm onelans/cmd-toolbox:0.4
```
This will drop you into an bash shell to allow you to do what you want inside a Ubuntu system.

If your want activate powerline add `-e "POWERLINE=TRUE"`
```bash
$ docker run -it -e "POWERLINE=TRUE" --rm onelans/cmd-toolbox:0.4
```

### Kubernetes

```bash
kubectl apply -f ./cmd-toolbox-pod.yml
kubectl exec -ti cmd-toolbox bash
```
or 
```bash
kubectl run -it --tty cmdbox --image=onelans/cmd-toolbox:0.4 --restart=Never -- bash
``` 
