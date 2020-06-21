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
