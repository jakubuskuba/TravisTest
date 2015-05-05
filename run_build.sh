#!/usr/bin/env bash

set -ev

#echo $COVERITY_SCAN_PROJECT_NAME
#echo $SCAN_URL
AUTH_RES=`curl -s --form project="jakubuskuba/TravisTest" --form token="my97cMNiskIJ8k+OY3vn1ODLA7LaKhSo+3f213tIrSf34aJtaF5L0rKtWKVRsion8jh4d3cdwVcjUzt56rg/bUPU//P2Fjw71ktXXg+OYtpZ2UePF49kcIGkbIdN3y3Bd3w3uuSb24FfhRYPmXQcXdmDXYRfTL+rM+sh/h+eYpY=" https://scan.coverity.com/api/upload_permitted`
AUTH=`echo $AUTH_RES | ruby -e "require 'rubygems'; require 'json'; puts JSON[STDIN.read]['upload_permitted']"`
echo $AUTH_RES
echo $AUTH
echo "master1"






