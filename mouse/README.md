# mouse

### FAQ

How to restart xorg or what ever window manager

```shell script
$ vagrant ssh
[vagrant@mouse ~]$ sudo killall Xorg
```

How to package and reuse?
```shell script
$ vagrant up
$ vagrant package --base mouse
```

How to update and rebuild box locally after I've made changes to the Vagrantfile?
```shell script
# make edits
$ vagrant up
$ vagrant package --base mouse
$ vagrant box remove mouse
$ vagrant box add --name mouse /path/to/mouse/packgage.box
```
