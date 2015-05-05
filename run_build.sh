#!/usr/bin/env bash

set -ev

#echo $COVERITY_SCAN_PROJECT_NAME
#echo $SCAN_URL
#AUTH_RES=`curl -s --form project="jakubuskuba/TravisTest" --form token="$COVERITY_SCAN_TOKEN" https://scan.coverity.com/api/upload_permitted`
AUTH_RES=`curl -s --form project="$COVERITY_SCAN_PROJECT_NAME" --form token="$COVERITY_SCAN_TOKEN" $SCAN_URL/api/upload_permitted`
AUTH=`echo $AUTH_RES | ruby -e "require 'rubygems'; require 'json'; puts JSON[STDIN.read]['upload_permitted']"`
echo $AUTH_RES
echo $AUTH
echo "master1"






