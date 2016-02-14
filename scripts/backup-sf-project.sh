#!/bin/bash

tmp=tmpRepoToBackup

rm -rf $tmp
cp -R $1 $tmp
rm -rf $tmp/vendor $tmp/app/cache $tmp/app/logs
tar zcvf $1.tar.gz $tmp
rm -rf $tmp
