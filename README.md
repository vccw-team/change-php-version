# Change PHP version for the VCCW

It is a simple shell script that installs any version of PHP you need.

## How to use

Pleace the `provision-post.sh` into your VCCW directory. Following example is installing the PHP 5.6. You can choose PHP version 5.6 or 7.2 or so.

```
#! /usr/bin/env bash

set -ex

curl https://raw.githubusercontent.com/vccw-team/change-php-version/master/run.sh | bash -s -- 5.6
```

Then run:

```
$ vagrant up
```

Or

```
$ vagrant provision
```
