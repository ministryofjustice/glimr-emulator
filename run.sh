#!/bin/bash
cd /usr/src/app
echo "Running app"
bundle exec puma -p 4567
