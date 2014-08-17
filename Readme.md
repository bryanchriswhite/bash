# bash

Recommended bash commands at Spreemo

You can add include this file in your .bash_profile, and still override anything you don't want. If you have aliases that would be useful to the team, please make a pull request. To use, go to your dev directory (e.g., `/Users/dan/Documents/dev/`) and enter:
```
brew install bash-completion
git clone git@github.com:spreemo/bash.git
echo "DEVDIR=$(pwd)" >> ~/.bash_profile
echo 'source $DEVDIR/bash/spreemo.bash' >> ~/.bash_profile
```
