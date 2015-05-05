#!/usr/bin/env bash

set -ev

AUTH_RES=`curl -s --form project="jakubuskuba/TravisTest" --form token="$COVERITY_SCAN_TOKEN" https://scan.coverity.com/api/upload_permitted`
echo $AUTH_RES
AUTH=`echo $AUTH_RES | ruby -e "require 'rubygems'; require 'json'; puts JSON[STDIN.read]['upload_permitted']"`
echo $AUTH





