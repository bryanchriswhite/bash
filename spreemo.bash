# Recommended bash commands at Spreemo
# Use by cloning this repo to your dev directory
# Then, in your ~/.bash_profile, set your dev directory like this:
#   $DEVDIR = /Users/dan/Documents/dev/
#   source $DEVDIR/bash/spreemo.bash
# You can override any alias here by setting it in your personal .bash_profile
# If you have aliases that would be useful to the team, please make a pull request


source /usr/local/etc/bash_completion.d/git-completion.bash
source /usr/local/etc/bash_completion.d/git-prompt.sh

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

export EDITOR=subl
HISTSIZE=500
shopt -s checkwinsize # make sure terminals wrap lines correctly after resizing them

# PS1='\h:\w\$ ' # boring prompt
PS1='\h:\w\[\033[32m\]$(__git_ps1)\[\033[0m\]$ ' # colorful prompt with git
alias ..='cd ..'
alias an='bundle exec annotate -msp after'
alias ba='$EDITOR ~/.bash_profile' # edit your .bash_profile
alias bs='$EDITOR $DEVDIR/bash/spreemo.bash' # edit this file; don't forget to create pull request later
alias bu='brew update && brew upgrade' # update homebrew applications
alias ch='cd $DEVDIR/chewy'
alias cs='DRIVER=firefox spring cucumber -f pretty'
alias cu='spring cucumber'
alias cuf='spring cucumber -f pretty'
alias d='ls -aBFGhl'
alias dev='cd $DEVDIR'
alias ds='find . -name .DS_Store -print -exec rm {} \;' # Delete useless Dropbox files
alias e='$EDITOR --add'
alias excel='open -a /Applications/Microsoft\ Office\ 2011/Microsoft\ Excel.app/' # Open file in Excel
alias ga='git add'
alias gb='git branch'
alias gc='git commit'
alias gd='git diff'
alias gdc='git diff --cached'
alias gdm="git branch --merged | grep -v '^* master$' | grep -v '^ master$' | xargs git branch -d" # delete merged branches
alias gitfix='find .git -name "*conflicted*" -print -exec rm {} \;' # delete Dropbox conflicts in .git directory
alias gp='git fetch -p && git-branch-delete-orphans' # prune local branches not on Github; dangerous!
alias gs='git status -s' # succinct status
alias gu='bundle exec guard'
alias hist='git log --pretty=format:"%h %ad | %s%d [%an]" --graph --date=short'
alias l='ls -aBFG'
alias lo='rake db:schema:load'
alias ls='ls -BFGh'
alias p='ping -c 30 google.com' # Check Internet connectivity
alias production='git checkout production; git pull; git merge --ff-only origin/master; git push; git checkout master' # push master to production
alias rdb='rails db' # Open psql to dev database
alias rc='rails console'
alias re='sudo apachectl restart' # Restart Apache
alias rl='. ~/.bash_profile' # Reload your .bash_profile and this file
alias rmcon='find . -name "*conflicted*" -print -exec rm {} \;' # Remove all Dropbox conflicted versions
alias rs='spring rspec -fd'
alias rss='spring rspec -fd spec' # https://github.com/jonleighton/spring-commands-rspec/issues/21
alias s='cd $DEVDIR/spreemo-lite'
alias t='less -e' # types file, and quits at end of file


# Tricks from http://www.ukuug.org/events/linux2003/papers/bash_tips/

# A new shell gets the history lines from all previous shells
shopt -s histappend
PROMPT_COMMAND='history -a'

# When changing directory small typos are ignored by Bash
shopt -s cdspell

# Specify that Ctrl-D must be pressed twice to exit Bash
export IGNOREEOF=1
