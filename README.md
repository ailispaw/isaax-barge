# isaax on Barge RPi

[isaax](https://isaax.io/) を [Barge RPi (Barge for RPi3)](https://github.com/bargees/barge-os/releases/tag/2.2.2-rpi) で使えるようにする。

## Install

```bash
$ git clone https://github.com/ailispaw/isaax-barge.git
$ cd isaax-barge
$ ssh bargee@<IP Address for Barge RPi> -q -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no "bash -s" < install.sh
```

## Start

```bash
[bargee@barge ~]$ sudo /etc/init.d/isaaxd start
```

## Stop

```bash
[bargee@barge ~]$ sudo /etc/init.d/isaaxd stop
```

## Restart

It looks like necessary to be affected by updates, although patching is successful after committing. :(

```bash
[bargee@barge ~]$ sudo /etc/init.d/isaaxd restart
```
