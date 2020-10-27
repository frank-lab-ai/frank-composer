#!/bin/bash

cd ../
echo 'cloning franky repo...'
git clone https://github.com/frank-lab-ai/franky.git

printf '\nDone\n'

echo 'cloning frank-ui repo...'
git clone https://github.com/frank-lab-ai/frank-ui.git
printf '\nDone\n'

cd frank-composer
