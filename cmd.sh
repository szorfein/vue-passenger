#!/usr/bin/env bash

if [ "$ENV" == 'DEV' ] ; then
  echo "Running Development Server"
  exec npm run serve
else
  echo "Running Production Server"
  exec npm run build
fi
