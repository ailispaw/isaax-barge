# isaax on Barge RPi

[isaax](https://isaax.io/) を [Barge RPi (Barge for RPi3)](https://github.com/bargees/barge-os/releases/tag/2.2.2-rpi) で使えるようにする。

## Install

```bash
$ git clone https://github.com/ailispaw/isaax-barge.git
$ cd isaax-barge
$ ssh bargee@<IP Address for Barge RPi> -q -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no "bash -s" < install.sh
```

## Setup

- [isaaxをはじめよう](https://help.isaax.io/hc/ja/sections/206004247) に従って、「アプリケーションの準備」まで行う。

- [5. デバイスのセットアップ ( Raspberry Pi )](https://help.isaax.io/hc/ja/articles/227123348) の「isaax device config」の４〜９を行う。

```bash
$ isaax device config
```

以下のようなエラーが表示されますが、無視します。サービスは手動で起動します。

```
Error while installing daemon: Service has already been installed
Error while starting daemon: exec: "service": executable file not found in $PATH
Service is stopped
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
