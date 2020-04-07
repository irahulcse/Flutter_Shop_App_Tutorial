#!/bin/sh
git commit -a -m "autoupdate `date +%F-%T`"
git push origin master