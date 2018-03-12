

# *****************
#   GIT Aliases
# *****************

# Graph shortcut that includes a custom format to present the commit, author, timestamp etc in different colors
alias gg='git log --all --graph --pretty=format:"%C(auto)%h%C(auto)%d %s %C(magenta bold)[%aN] %C(white bold)(%ar)"'

# Shorcut to show the status in the condensed form
alias gts='git status -s -b'

# Delete branch in both local and remote repositories
#       gdb branchname
function delete_branch () { echo -e "\nDeleting Remote branch";
                            echo "git push origin :$1"
                            git push origin :$1
                            echo -e "\nDeleting Local branch"
                            echo "git branch -d $1"
                            git branch -d $1
                            }
alias gdb='delete_branch' 

# *****************


# Perform a grep on a tail -f stream
#       gtail filename regexpattern
function grep_tail () { tail -f $1 | grep --line-buffered $2; }
alias gtail='grep_tail' 
