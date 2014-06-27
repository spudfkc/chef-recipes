#!/bin/bash

rm -rf ./cookbooks
berks vendor cookbooks
chef-solo -c solo.rb
