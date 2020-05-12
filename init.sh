#!/bin/bash

username=""


while [ "$1" != "" ]; do
  case $1 in
    -u | --username )   shift
                        username=$1
                        ;;
  esac
  shift
done

if [ "$username" != "" ]; then
  cd ../
  echo 'cloning franky repo...'
  git clone https://$username@bitbucket.org/frank-lab/franky.git

  echo '\nDone\n'

  echo 'cloning franky repo...'
  git clone https://$username@bitbucket.org/frank-lab/frank-ui.git
  echo '\nDone\n'
else
  echo "A bitbucket username must be provided with the -u or --username flag."
fi