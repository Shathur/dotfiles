alias agi='sudo apt-get install'
alias agu='sudo apt-get update'
alias up='cd ..'
function cdl { cd $1; ls;}
alias lt='ls -lt'
alias sub='cd ~/stash/unix-bind/src'
alias eub='cd ~/ncs-envs/unix-bind/ && ncs -c ncs.conf && ncs_cli -u admin'
alias ncli='ncs_cli -u admin'
alias nenv='make env.sh && . env.sh'
